# https://github.com/google/flatbuffers
ExternalProject_Add(flatbuffers
    GIT_REPOSITORY https://github.com/google/flatbuffers
    GIT_TAG v1.9.0
    GIT_PROGRESS ${cpp_packages_show_git_progress}

    INSTALL_DIR "${cpp_packages_install_dir}/flatbuffers"
    CMAKE_CACHE_ARGS
        -DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR>
        -DFLATBUFFERS_BUILD_TESTS:BOOL=OFF
)

ExternalProject_Add_Step(flatbuffers archive
    COMMAND ${CMAKE_COMMAND} -E tar cf "flatbuffers.7z" --format=7zip "flatbuffers"
    COMMENT "Archiving flatbuffers ..."
    WORKING_DIRECTORY "${cpp_packages_install_dir}"
    DEPENDEES install
)
