set(TARGET plugin-one)
add_library(${TARGET} SHARED)

target_compile_features(
    ${TARGET}
    PRIVATE
        cxx_std_20
)

target_sources(
    ${TARGET}
    PRIVATE
        plugin.cpp
)

target_link_libraries(
    ${TARGET}
    PUBLIC
    	shared-types-impl
)

add_dependencies(
    ${TARGET}
    shared-types-impl
   )
