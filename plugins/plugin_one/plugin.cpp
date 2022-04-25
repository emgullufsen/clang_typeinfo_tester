#include "../../interface/plugin.hpp"

#include <iostream>

class plugin :
    public interface::plugin
{
public:
    plugin() = default;
    ~plugin() override = default;

    void do_stuff(const std::shared_ptr<interface::type_base>& t) const override
    {
        // Sanity check
        if (!t) {
            std::cout << "t is nullptr" << std::endl;
            return;
        }

        // Cast
        if (auto t_int = std::dynamic_pointer_cast<interface::type_int>(t); t_int)
            std::cout << "t is type_int" << std::endl;
        else if (auto t_string = std::dynamic_pointer_cast<interface::type_string>(t); t_string)
            std::cout << "t is type_string" << std::endl;
        else
            std::cout << "could not cast t" << std::endl;
    }
};

extern "C" interface::plugin* create()
{
    return new ::plugin;
}

extern "C" void destroy(interface::plugin* p)
{
    delete p;
}

