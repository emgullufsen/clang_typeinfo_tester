#pragma once

#include <string>

namespace interface
{

    struct type_base
    {
        virtual ~type_base() = default;
	virtual void funky() = 0;
	int num();
    };

    struct type_int :
        type_base
    {
        int data;
	void funky() override {
		return;
	};
	~type_int(){}
    };

    struct type_string :
        type_base
    {
        std::string data;
	void funky() override {
		return;
	}
	~type_string(){}
    };

}
int interface::type_base::num() {
	return 33;
}
