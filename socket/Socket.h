#include <arpa/inet.h>
#include <memory>
#include <string>
#include <iostream>

namespace hzh{

class Sockaddr_in{
public:
    typedef std::shared_ptr<Sockaddr_in> ptr;
    
    Sockaddr_in();
    Sockaddr_in(const std::string& host, const int port);
    void setmsockaddr_in(const std::string& host, const int port);
    virtual ~Sockaddr_in(){}
    friend std::ostream& operator<<(std::ostream& os, const Sockaddr_in&);

public:
    std::shared_ptr<sockaddr_in> msockaddr_in;
};

class Socket {
public:
    typedef std::shared_ptr<Socket> ptr;
    
    Socket();
    Socket(const int domain, const int type, const int protocol);

    operator int(){ return mfd; }

    virtual ~Socket() { }

private:
    int mfd;
};

}