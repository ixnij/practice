#include <filesystem>
#include <iostream>
#include <string>

namespace fs = std::filesystem;
using std::cout, std::endl;

int main(int argc, const char *argv[]) {
    fs::path p = fs::current_path();
    cout << p << endl;
    fs::path z = "/tmp/Test_dictionary";
    fs::create_directory(z);
    cout << "Removing " << z << "...\n";
    fs::remove_all(z);
    std::string path = "/Users/wu/Projects/Misc";
    fs::create_directory(path);
}
