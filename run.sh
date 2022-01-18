# Clean
bazel clean --expunge

# To fetch all the newly added dependencies, just run Gazelle:
bazel run //:gazelle

# Go Modules (https://github.com/bazelbuild/bazel-gazelle#update-repos)
go build -o /dev/null ./...
bazel run //:gazelle -- update-repos -from_file=go.mod
bazel run //:gazelle

# Run app
bazel run //packages/main_app:main_app
bazel run //packages/second_app:second_app
