# https://github.com/jbeder/yaml-cpp.git
ExternalProject_Add(yaml_cpp
    GIT_REPOSITORY https://github.com/jbeder/yaml-cpp.git
    GIT_TAG yaml-cpp-0.6.2
    GIT_PROGRESS ${cpp_packages_show_git_progress}

    INSTALL_DIR "${cpp_packages_install_dir}/yaml-cpp"
    CMAKE_CACHE_ARGS
        -DBUILD_GMOCK:BOOL=OFF
        -DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR>
        -DYAML_CPP_BUILD_CONTRIB:BOOL=OFF
        -DYAML_CPP_BUILD_TESTS:BOOL=OFF
        -DYAML_CPP_BUILD_TOOLS:BOOL=OFF
)

ExternalProject_Add_Step(yaml_cpp archive
    COMMAND ${CMAKE_COMMAND} -E tar cf "yaml-cpp.7z" --format=7zip "yaml-cpp"
    COMMENT "Archiving yaml-cpp ..."
    WORKING_DIRECTORY "${cpp_packages_install_dir}"
    DEPENDEES install
)
