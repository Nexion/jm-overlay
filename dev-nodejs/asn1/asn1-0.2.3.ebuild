# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

NODE_MODULE_HAS_TEST="1"

inherit node-module

DESCRIPTION="Contains parsers and serializers for ASN.1 (currently BER only)"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"

DEPEND="${DEPEND}
	test? ( dev-util/tap:0 )"

DOCS=( README.md )

node_module_run_test() {
	install_node_module_build_depend "tap:0"
	tap tst || die "Tests failed"
}
