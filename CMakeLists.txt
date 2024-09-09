cmake_minimum_required(VERSION 3.13)

project(
  nix_test_app
  VERSION 1.0.0
  LANGUAGES CXX)

find_package(Boost 1.67.0 REQUIRED)
find_package(REQUIRED)

add_executable(nix_test_app main.cpp)

target_link_libraries(nix_test_app Boost::boost)

install(TARGETS nix_test_app)
