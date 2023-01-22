# FROM ubuntu:22.04
FROM swift:5.7.0-jammy

COPY . /app/protoc

RUN bash /app/protoc/scripts/pre-install.sh

ARG PROTOC_VERSION=21.1-linux-x86_64
RUN bash /app/protoc/scripts/install-protoc.sh $PROTOC_VERSION

ARG GO_VERSION=1.18.3.linux-amd64
RUN bash /app/protoc/scripts/install-go-sdk.sh $GO_VERSION

RUN bash /app/protoc/scripts/post-install.sh

#   inflating: /app/bin/protoc
#   inflating: /app/include/google/protobuf/any.proto
#   inflating: /app/include/google/protobuf/api.proto
#   inflating: /app/include/google/protobuf/compiler/plugin.proto
#   inflating: /app/include/google/protobuf/descriptor.proto
#   inflating: /app/include/google/protobuf/duration.proto
#   inflating: /app/include/google/protobuf/empty.proto
#   inflating: /app/include/google/protobuf/field_mask.proto
#   inflating: /app/include/google/protobuf/source_context.proto
#   inflating: /app/include/google/protobuf/struct.proto
#   inflating: /app/include/google/protobuf/timestamp.proto
#   inflating: /app/include/google/protobuf/type.proto
#   inflating: /app/include/google/protobuf/wrappers.proto
#   inflating: /app/readme.txt