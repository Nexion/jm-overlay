# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

NODE_MODULE_EXTRA_FILES="path.js runtime.js runtime-module.js"

inherit node-module

DESCRIPTION="Runtime for Regenerator-compiled generator and async functions"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"
