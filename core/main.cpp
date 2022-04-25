#include <dlfcn.h>
#include <forward_list>
#include <iostream>

#include "dlclass.hpp"
#include "../interface/plugin.hpp"
#include "../interface/types.hpp"

class plugin_manager
{
public:
    void load_plugins()
    {
        // Load plugin
        auto dl_plugin = dlclass<interface::plugin>("../plugins/plugin_one/libplugin-one.so");
        auto plugin = dl_plugin.make_obj();
        if (!plugin) {
            std::cerr << "could not load plugin." << std::endl;
            return;
        }

        // Bookkeeping
        m_plugins.push_front(plugin);
    }

    void dispatch(const std::shared_ptr<interface::type_base>& t)
    {
        for (auto p : m_plugins)
            p->do_stuff(t);
    }

private:
    std::forward_list<std::shared_ptr<interface::plugin>> m_plugins;
};

int main()
{
    // Plugin manager
    plugin_manager pm;
    pm.load_plugins();

    // Test type_int
    auto t_int = std::make_shared<interface::type_int>();
    t_int->data = 42;
    pm.dispatch(t_int);

    // Test type_string
    auto t_string = std::make_shared<interface::type_string>();
    t_string->data = "Hello World!";
    pm.dispatch(t_string);

    // Done
    std::cout << "done." << std::endl;

    return EXIT_SUCCESS;
}
