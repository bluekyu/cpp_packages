# https://github.com/gabime/spdlog
ExternalProject_Add(spdlog
    GIT_REPOSITORY https://github.com/gabime/spdlog
    GIT_TAG v0.14.0
    GIT_PROGRESS 1

    INSTALL_DIR "${cpp_packages_install_dir}/spdlog"
    CMAKE_CACHE_ARGS -DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR>
)

ExternalProject_Add_Step(spdlog archive
    COMMAND ${CMAKE_COMMAND} -E tar cf "spdlog.7z" --format=7zip "spdlog"
    COMMENT "Archiving spdlog ..."
    WORKING_DIRECTORY "${cpp_packages_install_dir}"
    DEPENDEES install
)
