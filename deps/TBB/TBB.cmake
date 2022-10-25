prusaslicer_add_cmake_project(
    TBB
    URL "https://github.com/p12tic/oneTBB/archive/19a4f83490d368e5ad5c1dd306812ad973013bcc.zip"
    URL_HASH SHA256=8478a9a00e3d8347f0095d5d0daabd005acd44296007e529906bc4a1a2b1ba8a
    CMAKE_ARGS          
        -DTBB_BUILD_SHARED=OFF
        -DTBB_TEST=OFF
        -DCMAKE_POSITION_INDEPENDENT_CODE=ON
        -DCMAKE_DEBUG_POSTFIX=_debug
)

if (MSVC)
    add_debug_dep(dep_TBB)
endif ()


