# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.1

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="A program to find and display the docs of a name from a given module"
HOMEPAGE="http://github.com/chrisdone/haskell-docs"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		dev-haskell/ghc-paths
		dev-haskell/haddock
		dev-haskell/monad-loops
		>=dev-lang/ghc-6.10.4"
