#include <cstdlib>
#include <filesystem>
#include <iostream>
#include <string>

namespace fs = std::filesystem;
using std::string;

int main(int argc, const char *argv[]) {
    if (argc != 2) {
	std::exit(EXIT_FAILURE);
    }
    string op = argv[1];
    fs::path dir = fs::current_path();
    dir.append(argv[2]);
    std::cout << dir << std::endl;
    if (op == "mk") {
	fs::create_directory(dir);
    } else if (op == "rm") {
	fs::remove_all(dir);
    } else {
	std::exit(EXIT_FAILURE);
    }

    exit(EXIT_SUCCESS);
}
