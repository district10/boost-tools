file( GLOB SRCS *.c *.cpp *.cc *.h *.hpp )
add_executable( inspect ${SRCS} )
target_link_libraries( inspect MiniBoost )
