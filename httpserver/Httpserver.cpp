#include "Httpserver.h"
#include <assert.h>

namespace hzh{

Httpserver::Httpserver() {
    mfd = Socket();
    msockaddr = std::make_shared<Sockaddr_in>();
}

Httpserver::Httpserver(const std::string& host, const int port) {
    mfd = Socket();
    msockaddr = std::make_shared<Sockaddr_in>(host, port);
}

void Httpserver::Bind() {
    std::cout << mfd << std::endl;
    *msockaddr << std::cout;
    int result = bind(mfd, (sockaddr*)&(*msockaddr), sizeof(sockaddr));
    assert(result == 0);
}

void Httpserver::Listen(const int num) {
    int result = listen(mfd, num);
}

void Httpserver::run() {
    Bind();
    std::cout << "bind : " << msockaddr << " success" << std::endl;
    Listen(200);
    std::cout << "listenning..." << std::endl;
}

void Httpserver::Accept() {

}

}