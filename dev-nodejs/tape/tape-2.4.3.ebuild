# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

NODE_MODULE_HAS_TEST="1"
NODE_MODULE_DEPEND="deep-equal:0.2.2
	jsonify:0.0.0
	defined:0.0.0
	inherits:2.0.3
	resumer:0.0.0
	through:2.3.8"
NODE_MODULE_TEST_DEPEND="falafel:0.1.6"

inherit node-module

DESCRIPTION="Tap-producing test harness for node and browsers"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"
IUSE="examples test"

DOCS=( readme.markdown )
DEPEND="${DEPEND}
	test? ( dev-util/tap:0.7 )"

src_install() {
	node-module_src_install
	use examples && dodoc -r example
}

node_module_run_test() {
	install_node_module_build_depend "tap:0.7"
	tap-0.7 test/*.js || die "Tests failed"
}
