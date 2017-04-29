#!/bin/bash
LIB_DIR=/opt/faraadid/google/lib
INCLUDE_DIR=/opt/faraadid/include/google/tensorflow
mkdir -p "$LIB_DIR"  "$INCLUDE_DIR"
cp bazel-bin/tensorflow/libtensorflow_cc.so "$LIB_DIR"
cp -r tensorflow "$INCLUDE_DIR"
find "$INCLUDE_DIR"/tensorflow -type f  ! -name "*.h" -delete

cp bazel-genfiles/tensorflow/core/framework/*.h  "$INCLUDE_DIR"/tensorflow/core/framework
cp bazel-genfiles/tensorflow/core/kernels/*.h  "$INCLUDE_DIR"/tensorflow/core/kernels
cp bazel-genfiles/tensorflow/core/lib/core/*.h  "$INCLUDE_DIR"/tensorflow/core/lib/core
cp bazel-genfiles/tensorflow/core/protobuf/*.h  "$INCLUDE_DIR"/tensorflow/core/protobuf
cp bazel-genfiles/tensorflow/core/util/*.h  "$INCLUDE_DIR"/tensorflow/core/util
cp bazel-genfiles/tensorflow/cc/ops/*.h  "$INCLUDE_DIR"/tensorflow/cc/ops

cp -r third_party "$INCLUDE_DIR"
rm -r "$INCLUDE_DIR"/third_party/py

