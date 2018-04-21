# https://github.com/assimp/assimp
ExternalProject_Add(assimp
    GIT_REPOSITORY https://github.com/assimp/assimp.git
    GIT_TAG v4.1.0
    GIT_PROGRESS 1

    INSTALL_DIR "${cpp_packages_install_dir}/assimp"
    CMAKE_CACHE_ARGS
        -DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR>
        -DASSIMP_BUILD_ASSIMP_TOOLS:BOOL=OFF
        -DASSIMP_BUILD_TESTS:BOOL=OFF
        -DASSIMP_INSTALL_PDB:BOOL=OFF
        -DASSIMP_NO_EXPORT:BOOL=ON
        -DBUILD_SHARED_LIBS:BOOL=OFF
)

ExternalProject_Add_Step(assimp archive
    COMMAND ${CMAKE_COMMAND} -E tar cf "assimp.7z" --format=7zip "assimp"
    COMMENT "Archiving assimp ..."
    WORKING_DIRECTORY "${cpp_packages_install_dir}"
    DEPENDEES install
)
