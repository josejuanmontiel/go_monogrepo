bazel build //packages/main_app:go_image --platforms=@io_bazel_rules_go//go/toolchain:linux_amd64
bazel run //packages/main_app:go_image

