load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_test")
go_binary(
    name = "second_app",
    srcs = ["main.go"],
    importpath = "github.com/josejuanmontiel/go_monogrepo/packages/second_app",
    deps = [
        "//packages/main_app/router:router",
        "//packages/proto/api:go_default_library",
        "@org_golang_google_grpc//:go_default_library",
    ],
)
go_test(
    name = "mainTest",
    srcs = ["main_test.go"],
)