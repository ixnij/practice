#include <cxxopts.hpp>
#include <iostream>

int main(int argc, const char *const argv[]) {
    cxxopts::Options opts(argv[0], " - a text command line option.");
    opts.positional_help("[optional]").show_positional_help();
    opts.set_width(70)
        .set_tab_expansion()
        .allow_unrecognised_options()
        .add_options();
}
