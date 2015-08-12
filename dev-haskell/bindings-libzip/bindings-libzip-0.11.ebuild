# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Low level bindings to libzip"
HOMEPAGE="http://bitbucket.org/astanin/hs-libzip/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/bindings-dsl-1.0*:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		dev-libs/libzip"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2.3
		virtual/pkgconfig"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-nopkgconfig
}
