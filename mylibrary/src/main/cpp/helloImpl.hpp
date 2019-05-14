#include "Hello.hpp"

namespace netvirta {
    class HelloImpl: public netvirta::Hello {
    public:
        HelloImpl();

        ~HelloImpl() override;

        std::string setString(const std::string & text) override;
    };
}