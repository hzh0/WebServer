#include "Socket.h"
#include <string.h>
#include <assert.h>

namespace hzh{

Sockaddr_in::Sockaddr_in() {
    setmsockaddr_in("127.0.0.1", 9999);
}

Sockaddr_in::Sockaddr_in(const std::string& host, const int port) {
    setmsockaddr_in(host, port);
}

std::ostream& operator<<(std::ostream& os, const Sockaddr_in& obj ) {
    char host[20];
    bzero(host, sizeof(host));
    inet_ntop(AF_INET, &obj.msockaddr_in->sin_addr.s_addr, host, sizeof(host));
    int port = ntohs(obj.msockaddr_in->sin_port);
    os << host << ":" << port;
    return os; 
}

void Sockaddr_in::setmsockaddr_in(const std::string& host, const int port){
    msockaddr_in = std::make_shared<sockaddr_in>();
    bzero(&(*msockaddr_in), sizeof(*msockaddr_in));
    msockaddr_in->sin_family = AF_INET;
    inet_pton(AF_INET, host.c_str(), &(msockaddr_in->sin_addr.s_addr));
    msockaddr_in->sin_port = htons(port);
}

Socket::Socket() {
    mfd = socket(AF_INET, SOCK_STREAM, 0);
    assert( mfd > 0 );
}

Socket::Socket(const int domain, const int type, const int protocol) {
    mfd = socket(domain, type, protocol);
    assert( mfd > 0 );
}

}