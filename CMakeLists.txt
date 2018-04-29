# Author: Younguk Kim (bluekyu)
# Date  : 2017-12-24

cmake_minimum_required(VERSION 3.9)
project(cpp_packages)

option(cpp_packages_show_git_progress "Show Git progress" ON)

set(library_names
    "assimp"
    "flatbuffers"
    "spdlog"
    "yaml-cpp"
)

include(ExternalProject)

set(cpp_packages_install_dir "${CMAKE_CURRENT_SOURCE_DIR}/install" CACHE PATH "Directory path for install")

foreach(library_name ${library_names})
    option(build_${library_name} "Build ${library_name}" ON)
    if(build_${library_name})
        include(${library_name}.cmake)
    endif()
endforeach()
