#pragma once

#include <string>

namespace interface
{

    struct type_base
    {
        virtual ~type_base() = default;
    };

    struct type_int :
        type_base
    {
        int data;
    };

    struct type_string :
        type_base
    {
        std::string data;
    };

}
