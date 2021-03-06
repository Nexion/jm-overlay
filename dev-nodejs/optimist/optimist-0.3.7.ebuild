# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

NODE_MODULE_DEPEND="wordwrap:0.0.3"
NODEJS_MIN_VERSION="0.4"

inherit node-module

DESCRIPTION="Light-weight option parsing for node.js"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"
IUSE="examples"

DOCS=( readme.markdown )

src_install() {
	node-module_src_install
	use examples && dodoc -r example
}
