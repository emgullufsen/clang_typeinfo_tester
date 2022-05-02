set(TARGET shared-types-impl)

add_library(${TARGET} SHARED)

target_compile_features(
	${TARGET}
	PRIVATE
		cxx_std_20
)

target_sources(
	${TARGET}
	PRIVATE
		types_impl.cpp
)
