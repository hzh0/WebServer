#include "../socket/Socket.h"

namespace hzh{

class Httpserver {

public:

    typedef std::shared_ptr<Httpserver> ptr;

    Httpserver();
    Httpserver(const std::string& host, const int port);

    void run();

    ~Httpserver(){}

private:
    void Bind();
    void Listen(const int num);
    void Accept();

private:
    int mfd;
    Sockaddr_in::ptr msockaddr; 
};

}