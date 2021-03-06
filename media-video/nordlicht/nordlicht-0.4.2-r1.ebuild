# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils

DESCRIPTION="library + tool that creates colorful video barcodes"
HOMEPAGE="https://github.com/blinry/nordlicht"
SRC_URI="https://github.com/blinry/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2+ BSD BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="libav"

RDEPEND="dev-libs/popt
	libav? ( media-video/libav:= )
	!libav? ( media-video/ffmpeg:= )"
DEPEND="${RDEPEND}
	sys-apps/help2man"

DOCS=( README.md )
