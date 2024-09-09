#include <boost/version.hpp>
#include <cstdlib>
#include <iostream>

int main(int argc, const char *const *const argv) {
  std::cout << "Boost v" << (BOOST_VERSION / 100000) << '.'
            << ((BOOST_VERSION / 100) % 1000) << '.' << (BOOST_VERSION % 100)
            << '\n';
  return EXIT_SUCCESS;
}
