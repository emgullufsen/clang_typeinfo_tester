#pragma once

#include "types.hpp"

#include <memory>

namespace interface
{

    struct plugin
    {
        typedef plugin* create_t();
        typedef void destroy_t(plugin*);

        virtual ~plugin() = default;

        virtual void do_stuff(const std::shared_ptr<interface::type_base>& t) const = 0;
    };

}
