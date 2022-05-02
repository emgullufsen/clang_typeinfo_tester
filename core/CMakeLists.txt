set(TARGET test-core)
add_executable(${TARGET})

target_compile_features(
    ${TARGET}
    PRIVATE
        cxx_std_20
)

target_sources(
    ${TARGET}
    PRIVATE
        main.cpp
        dlclass.hpp
)

target_link_libraries(
    ${TARGET}
    PRIVATE
        test-interface
        dl
    PUBLIC
        shared-types-impl
)

add_dependencies(
    ${TARGET}
    shared-types-impl
    plugin-one
)
