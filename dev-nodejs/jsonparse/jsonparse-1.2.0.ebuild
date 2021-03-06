# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

NODEJS_MIN_VERSION="0.2.0"
NODE_MODULE_HAS_TEST="1"
NODE_MODULE_TEST_DEPEND="tape:0.1.5"

inherit node-module

DESCRIPTION="This is a pure-js JSON streaming parser for node.js"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"
IUSE="examples test"

DOCS=( README.markdown )
DEPEND="${DEPEND}
	test? ( dev-util/tap:0 )"

src_install() {
	node-module_src_install
	use examples && dodoc -r examples
}

node_module_run_test() {
	tap test || die "Tests failed"
}
