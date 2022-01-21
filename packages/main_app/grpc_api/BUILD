load("@io_bazel_rules_go//go:def.bzl", "go_library")

go_library(
    name = "grpc_api",
    srcs = ["handler.go"],
    importpath = "github.com/josejuanmontiel/go_monogrepo/packages/main_app/grpc_api",
    visibility = ["//visibility:public"],
    deps = [
        "//packages/proto/api:go_default_library",
        "@org_golang_x_net//context:go_default_library",
    ],
)
