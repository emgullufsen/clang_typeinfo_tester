#pragma once

#include <string>

namespace interface
{

    struct type_base
    {
        virtual ~type_base();
    };

    struct type_int :
        type_base
    {
        virtual ~type_int();
        int data;
    };

    struct type_string :
        type_base
    {
    	virtual ~type_string();
        std::string data;
    };

}
