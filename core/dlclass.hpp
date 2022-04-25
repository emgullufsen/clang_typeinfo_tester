#pragma once

#include <filesystem>
#include <memory>
#include <string>

#include <dlfcn.h>


/**
 * A generic class loader.
 *
 * @details This is a convenience class to load any class from a shared library.
 *
 * @tparam T The class type to load.
 */
template <class T>
class dlclass
{

public:
    explicit
    dlclass(std::filesystem::path module_path) :
        m_module_path(std::move(module_path))
    {
        m_shared = std::make_shared<shared_obj>();
    }

    dlclass(const dlclass& other) = delete;
    dlclass(dlclass&& other) noexcept = delete;
    virtual ~dlclass() = default;

    dlclass& operator=(const dlclass& rhs) = delete;
    dlclass& operator=(dlclass&& rhs) = delete;
    bool operator==(const dlclass& rhs) = delete;

    /**
     * Make an object of type @p T.
     *
     * @tparam Args Constructor argument list.
     * @param args Arguments passed to the object's constructor.
     * @return The constructed object instance.
     */
    template <typename... Args>
    std::shared_ptr<T> make_obj(Args... args)
    {
        // Load the module (if needed)
        if (!m_shared->create || !m_shared->destroy) {
            if (const auto& [success, msg] = m_shared->open_module(m_module_path); !success)
                return nullptr;
        }

        // auto create_args = ((T* (*)(Args...))create);
        std::shared_ptr<shared_obj> my_shared = m_shared;
        return std::shared_ptr<T>(m_shared->create(args...), [my_shared](T* p){ my_shared->destroy(p); });
    }

private:
    struct shared_obj final
    {
        typename T::create_t* create = nullptr;
        typename T::destroy_t* destroy = nullptr;
        void* dll_handle = nullptr;

        ~shared_obj()
        {
            close_module();
        }

        std::pair<bool, std::string> open_module(const std::filesystem::path& module_path)
        {
            dll_handle = dlopen(module_path.string().c_str(), RTLD_LAZY);

            if (!dll_handle)
                return { false, "failed to open library: " + std::string{ dlerror() } };

            // Reset errors
            dlerror();

            // Get constructor
            create = (typename T::create_t*) dlsym(dll_handle, "create");
            const char* err = dlerror();
            if (err) {
                close_module();
                return { false, "failed to load create symbol: " + std::string{err} };
            }

            // Get destructor
            destroy = (typename T::destroy_t*) dlsym(dll_handle, "destroy");
            err = dlerror();
            if(err) {
                close_module();
                return { false, "failed to load destroy symbol: " + std::string{err} };
            }

            return { true, "success" };
        }

        void close_module()
        {
            if (dll_handle)
                dlclose(dll_handle);

            dll_handle = nullptr;
            create = nullptr;
            destroy = nullptr;
        }
    };

    std::filesystem::path m_module_path;
    std::shared_ptr<shared_obj> m_shared;       // ToDo: Does this need to be a shared_ptr?
};
