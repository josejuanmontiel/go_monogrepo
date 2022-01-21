load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_test")
load("@io_bazel_rules_docker//go:image.bzl", "go_image")
load("@io_bazel_rules_docker//container:container.bzl", "container_image")

go_binary(
    name = "main_app",
    srcs = ["main.go"],
    importpath = "github.com/josejuanmontiel/go_monogrepo/packages/main_app",
    deps = [
        "//packages/main_app/grpc_api",
        "//packages/main_app/router",
        "//packages/proto/api:go_default_library",
        "@org_golang_google_grpc//:go_default_library",
    ],
)
go_test(
    name = "mainTest",
    srcs = ["main_test.go"],
)

go_image(
    name = "go_image",
    srcs = ["main.go"],
    #base = "@alpine_linux_amd64//image",
    #base = "//base:base_root_amd64_debian11",
    base = "@go_image_base//image",
    importpath = "github.com/josejuanmontiel/go_monogrepo/packages/main_app",
    deps = [
        "//packages/main_app/grpc_api",
        "//packages/main_app/router",
    ],
)

container_image(
   name = "image",
   base = "@alpine_linux_amd64//image",
   entrypoint = ["/main_app"],
   files = [":main_app"],
)
