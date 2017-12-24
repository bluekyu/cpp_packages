# C++ Packages
C++ Packages for Build Automation

## Package Lists and Build Status

[![win-badge]][win-link]

[win-badge]: https://ci.appveyor.com/api/projects/status/qdh0cbyua1v7bynh/branch/master?svg=true "AppVeyor build status"
[win-link]: https://ci.appveyor.com/project/bluekyu/cpp-packages/branch/master "AppVeyor build link"

| Packages   | Windows Build                                                                                              |
| :--------: | :--------------------------------------------------------------------------------------------------------: |
| [spdlog]   | vc14 ([Debug][spdlog-win-debug], [RelWithDebInfo][spdlog-win-reldeb], [Release][spdlog-win-release])       |
| [yaml-cpp] | vc14 ([Debug][yaml-cpp-win-debug], [RelWithDebInfo][yaml-cpp-win-reldeb], [Release][yaml-cpp-win-release]) |

[spdlog]: https://github.com/gabime/spdlog
[spdlog-win-debug]: https://ci.appveyor.com/api/projects/bluekyu/cpp-packages/artifacts/install/spdlog.7z?branch=master&job=Configuration%3A+Debug "Download spdlog build (Debug)"
[spdlog-win-reldeb]: https://ci.appveyor.com/api/projects/bluekyu/cpp-packages/artifacts/install/spdlog.7z?branch=master&job=Configuration%3A+RelWithDebInfo "Download spdlog build (RelWithDebInfo)"
[spdlog-win-release]: https://ci.appveyor.com/api/projects/bluekyu/cpp-packages/artifacts/install/spdlog.7z?branch=master&job=Configuration%3A+Release "Download spdlog build (Release)"

[yaml-cpp]: https://github.com/jbeder/yaml-cpp.git
[yaml-cpp-win-debug]: https://ci.appveyor.com/api/projects/bluekyu/cpp-packages/artifacts/install/yaml-cpp.7z?branch=master&job=Configuration%3A+Debug "Download yaml-cpp build (Debug)"
[yaml-cpp-win-reldeb]: https://ci.appveyor.com/api/projects/bluekyu/cpp-packages/artifacts/install/yaml-cpp.7z?branch=master&job=Configuration%3A+RelWithDebInfo "Download yaml-cpp build (RelWithDebInfo)"
[yaml-cpp-win-release]: https://ci.appveyor.com/api/projects/bluekyu/cpp-packages/artifacts/install/yaml-cpp.7z?branch=master&job=Configuration%3A+Release "Download yaml-cpp build (Release)"

**Note**: These builds are built with *patched* [Panda3D](https://github.com/bluekyu/panda3d).
