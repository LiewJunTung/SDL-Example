
cmake_minimum_required(VERSION 3.4.1)

message("HELLO: ${GLM_DIR}")

include_directories(
        src/main/cpp
        src/main/cpp/djinni
        ../generated-src/cpp
        ../generated-src/jni
)

add_library( # Sets the name of the library.
        native_image_processor

        # Sets the library as a shared library.
        SHARED
        src/main/cpp/djinni/djinni_support.cpp
        src/main/cpp/djinni/djinni_main.cpp
        src/main/cpp/helloImpl.cpp
        ../generated-src/jni/NativeHello.cpp
        )

add_library(lib_sdl STATIC IMPORTED)
set_target_properties(lib_sdl PROPERTIES IMPORTED_LOCATION /Users/juntung/Downloads/SDL2/build/org.libsdl.testgles/mylibrary/src/main/jniLibs/${ANDROID_ABI}/libSDL2.so)


#add_library(lib_hdpi SHARED IMPORTED)
#set_target_properties(lib_hdpi PROPERTIES IMPORTED_LOCATION /Users/juntung/Downloads/SDL2/build/org.libsdl.testgles/mylibrary/src/main/jniLibs/${ANDROID_ABI}/libhidapi.so)



target_link_libraries( # Specifies the target library.
        native_image_processor
        lib_sdl
        )