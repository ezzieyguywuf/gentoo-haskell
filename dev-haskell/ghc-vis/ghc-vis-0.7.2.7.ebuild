# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib haddock hoogle hscolour" # does not support profiled heap layout
inherit haskell-cabal

DESCRIPTION="Live visualization of data structures in GHCi"
HOMEPAGE="http://felsin9.de/nnis/ghc-vis"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+full +graph"

RDEPEND=">=dev-haskell/cairo-0.12:= <dev-haskell/cairo-0.14:=
	>=dev-haskell/fgl-5.4:= <dev-haskell/fgl-5.6:=
	>=dev-haskell/ghc-heap-view-0.5:= <dev-haskell/ghc-heap-view-0.6:=
	>=dev-haskell/gtk-0.12:= <dev-haskell/gtk-0.14:=
	>=dev-haskell/mtl-2.0:= <dev-haskell/mtl-2.3:=
	>=dev-haskell/svgcairo-0.12:= <dev-haskell/svgcairo-0.14:=
	>=dev-haskell/text-0.11:= <dev-haskell/text-1.3:=
	>=dev-haskell/transformers-0.3:= <dev-haskell/transformers-0.5:=
	>=dev-lang/ghc-7.4.1:=
	graph? ( >=dev-haskell/graphviz-2999.17:= <dev-haskell/graphviz-2999.18:=
			>=dev-haskell/xdot-0.2:= <dev-haskell/xdot-0.3:= )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag full full) \
		$(cabal_flag graph graph)
}
