set(TARGET test-interface)

add_library(${TARGET} INTERFACE IMPORTED GLOBAL)

target_sources(
    ${TARGET}
    INTERFACE
        plugin.hpp
        types.hpp
)
