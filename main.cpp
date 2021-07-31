#include "./httpserver/Httpserver.h"
#include <string>

int main(void) {
   hzh::Httpserver::ptr httpserver = std::make_shared<hzh::Httpserver>("127.0.0.1", 8111);
   httpserver->run();
}