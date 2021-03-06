# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

NODEJS_MIN_VERSION="0.10.0"
NODE_MODULE_DEPEND="is-equal-shallow:0.1.3
	is-primitive:2.0.0"

inherit node-module

DESCRIPTION="Memoize the results of a call to the RegExp constructor"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"

DOCS=( README.md )
