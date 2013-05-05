# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="A Minimalistic Text Based Status Bar"
HOMEPAGE="http://projects.haskell.org/xmobar/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="alsa timezone dbus inotify wifi mpd mpris xft mail"

#	xft? ( net-wireless/iw )
RDEPEND="x11-libs/libXrandr
	wifi? ( net-wireless/wireless-tools )
	"

DEPEND="${RDEPEND}
		>=dev-lang/ghc-6.12.1
		>=dev-haskell/cabal-1.6
		>=dev-haskell/mtl-2.0
		<dev-haskell/mtl-2.2
		=dev-haskell/parsec-3.1*
		>=dev-haskell/stm-2.3
		<dev-haskell/stm-2.5
		>=dev-haskell/x11-1.6.1
		alsa? ( =dev-haskell/alsa-mixer-0.1*
			=dev-haskell/alsa-core-0.5*
		)
		dbus? ( >=dev-haskell/dbus-0.10 )
		mail? ( =dev-haskell/hinotify-0.3* )
		mpd? ( =dev-haskell/libmpd-0.8* )
		mpris? ( >=dev-haskell/dbus-0.10 )
		timezone? ( =dev-haskell/timezone-olson-0.1*
			=dev-haskell/timezone-series-0.1*
		)
		xft? ( <dev-haskell/x11-xft-0.4
			>=dev-haskell/x11-xft-0.2
			=dev-haskell/utf8-string-0.3*
		)"
RDEPEND+="mpd? ( media-sound/mpd )"

src_configure() {
	# with_threaded is to workaround http://hackage.haskell.org/trac/ghc/ticket/4934
	# but it's broken in current master:
	#    https://github.com/jaor/xmobar/issues/77
	cabal_src_configure \
		--flags=-with_threaded \
		--flags=with_utf8 \
		$(cabal_flag alsa with_alsa) \
		$(cabal_flag timezone with_datezone) \
		$(cabal_flag dbus with_dbus) \
		$(cabal_flag mail with_inotify) \
		$(cabal_flag wifi with_iwlib) \
		$(cabal_flag mpd with_mpd) \
		$(cabal_flag mpris with_mpris) \
		$(cabal_flag xft with_xft)
}

src_install() {
	cabal_src_install

	dodoc samples/xmobar.config readme.md news.md
}
