# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="Present the module dependencies of a program as a \"dot\" graph"
HOMEPAGE="http://github.com/yav/graphmod/wiki"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.2
	>=dev-haskell/dotgen-0.2 <dev-haskell/dotgen-0.5
	dev-haskell/haskell-lexer
	>=dev-lang/ghc-7.4.1
"
