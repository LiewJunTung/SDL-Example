#! /usr/bin/env bash

### Configuration

# Djinni IDL file location
djinni_file="hello.djinni"

# C++ namespace for generated src
namespace="netvirta"

# Objective-C class name prefix for generated src
objc_prefix="NV"

# Java package name for generated src
java_package="com.netvirta.testgles.generated"


### Script

# get base directory
base_dir=$(cd "`dirname "0"`" && pwd)

# get java directory from package name
java_dir=$(echo ${java_package} | tr . /)

# output directories for generated src
cpp_out="$base_dir/generated-src/cpp"
objc_out="$base_dir/generated-src/objc"
objcpp_out="$base_dir/generated-src/objcpp"
jni_out="$base_dir/generated-src/jni"
java_out="$base_dir/generated-src/java/$java_dir"

# clean generated src dirs
rm -rf ${cpp_out}
rm -rf ${jni_out}
rm -rf ${objc_out}
rm -rf ${objcpp_out}
rm -rf ${java_out}

# execute the djinni command
java -jar Archive/djinni.jar \
   --java-out ${java_out} \
   --java-package ${java_package} \
   --ident-java-field mFooBar \
   --ident-cpp-type FooBar \
   --ident-cpp-file FooBar \
   --ident-cpp-method fooBar \
   --cpp-out ${cpp_out} \
   --cpp-namespace ${namespace} \
   --jni-out ${jni_out} \
   --ident-jni-class NativeFooBar \
   --ident-jni-file NativeFooBar \
   --objc-out ${objc_out} \
   --objc-type-prefix ${objc_prefix} \
   --objcpp-out ${objcpp_out} \
   --objc-swift-bridging-header "HelloWorld-Bridging-Header" \
   --ident-objc-enum FOO_BAR \
   --idl ${djinni_file}
