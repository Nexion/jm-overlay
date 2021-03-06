# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

NODEJS_MIN_VERSION="0.10.0"
NODE_MODULE_DEPEND="pinkie:2.0.4"

inherit node-module

DESCRIPTION="ES2015 Promise ponyfill"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"

DOCS=( readme.md )
