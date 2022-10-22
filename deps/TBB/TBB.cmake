prusaslicer_add_cmake_project(
    TBB
    # The latest
    URL https://github.com/oneapi-src/oneTBB/archive/refs/tags/v2021.6.0.zip
    # The original in the code
    # URL "https://github.com/oneapi-src/oneTBB/archive/refs/tags/v2021.5.0.zip"
    URL_HASH SHA256=29376a78addbd0a81ac5fca5cc7ef82528281f0659b7e09a07672b136451c7b1
    # The original
    # URL_HASH SHA256=83ea786c964a384dd72534f9854b419716f412f9d43c0be88d41874763e7bb47
    CMAKE_ARGS          
        -DTBB_BUILD_SHARED=OFF
        -DTBB_TEST=OFF
        -DCMAKE_POSITION_INDEPENDENT_CODE=ON
        -DCMAKE_DEBUG_POSTFIX=_debug
        -DTbb_VERSION=9.1.0
)

if (MSVC)
    add_debug_dep(dep_TBB)
endif ()


