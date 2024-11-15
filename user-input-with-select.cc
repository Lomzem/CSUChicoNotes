// required headers for select()
#include <sys/time.h>
#include <sys/types.h>
#include <unistd.h>

// useful c++ headers
#include <iostream>
#include <ostream>
#include <string>

int main() {
    // wait exactly 2 seconds
    struct timeval tv;
    tv.tv_sec = 2;
    tv.tv_usec = 0;

    fd_set readfds;
    FD_ZERO(&readfds);

    // add stdin to readfds set
    FD_SET(STDIN_FILENO, &readfds);

    std::string userInput;

    int selectResult;

    while (1) {
        std::cin >> userInput;
        std::cout << "User inputted: " << userInput << "\n";

        selectResult = select(STDIN_FILENO + 1, &readfds, NULL, NULL, &tv);
        std::cout << "Select Return Value: " << selectResult << "\n";
        std::cout << "tv_sec: " << tv.tv_sec << "\n";
        std::cout << "tv_usec: " << tv.tv_usec << "\n";
        std::cout << "readfds has stdin: " << FD_ISSET(STDIN_FILENO, &readfds)
                  << std::endl;

        // if user doesn't enter any input during call to select, exit
        // selectResult == 0 means stdin was not ready and timed out
        if (selectResult == 0) {
            break;
        }

        // reset variables
        // since selectResult wasn't 0, that means that
        // stdin was ready and should still be in the readfds set
        tv.tv_sec = 2;
        tv.tv_usec = 0;
    }

    return 0;
}
