###############################################################################
# @generated
# This file is auto-generated by the cargo-bazel tool.
#
# DO NOT MODIFY: Local changes may be replaced in future executions.
###############################################################################
"""Rules for defining repositories for remote `crates_vendor` repositories"""

load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

# buildifier: disable=bzl-visibility
load("@proxy_wasm_rust_sdk//bazel/cargo/remote:defs.bzl", _crate_repositories = "crate_repositories")

# buildifier: disable=bzl-visibility
load("@rules_rust//crate_universe/private:crates_vendor.bzl", "crates_vendor_remote_repository")

def crate_repositories():
    maybe(
        crates_vendor_remote_repository,
        name = "crates_vendor",
        build_file = Label("@proxy_wasm_rust_sdk//bazel/cargo/remote:BUILD.bazel"),
        defs_module = Label("@proxy_wasm_rust_sdk//bazel/cargo/remote:defs.bzl"),
    )

    _crate_repositories()
