project( BoostTools )
cmake_minimum_required( VERSION 2.6 )

# Setup output directories
set( LIBRARY_OUTPUT_PATH
    ${PROJECT_BINARY_DIR}/bin
    CACHE
    PATH
    "Single directory for all libraries" )

set( EXECUTABLE_OUTPUT_PATH
    ${PROJECT_BINARY_DIR}/bin
    CACHE
    PATH
    "Single directory for all executables" )

link_directories( ${CMAKE_BINARY_DIR}/ )
link_directories( ${CMAKE_BINARY_DIR}/bin )
link_directories( ${CMAKE_BINARY_DIR}/bin/Debug )
link_directories( ${CMAKE_BINARY_DIR}/bin/Release )

include_directories( ${CMAKE_SOURCE_DIR}/include )

# build MiniBoost
add_subdirectory( libs )

# build tools
add_subdirectory( boostdep )
add_subdirectory( inspect )
