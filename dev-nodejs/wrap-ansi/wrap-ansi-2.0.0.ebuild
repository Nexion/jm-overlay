# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

NODEJS_MIN_VERSION="0.10.0"
NODE_MODULE_DEPEND="string-width:1.0.1"

inherit node-module

DESCRIPTION="Wordwrap a string with ANSI escape codes"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"

DOCS=( readme.md )
