
#include "helloImpl.hpp"


namespace netvirta {


    std::shared_ptr<Hello> Hello::create() {
        return std::make_shared<HelloImpl>();
    }

    HelloImpl::HelloImpl() {

    }

    //destroyer
    HelloImpl::~HelloImpl() {
    }

    std::string HelloImpl::setString(const std::string &text) {
        return text.c_str();
    }
}