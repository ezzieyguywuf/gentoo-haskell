# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="RPM packaging tool for Haskell Cabal-based packages"
HOMEPAGE="https://github.com/juhp/cabal-rpm"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">dev-haskell/cabal-1.10:= <dev-haskell/cabal-1.25:=
	>=dev-haskell/old-locale-1:= <dev-haskell/old-locale-1.1:=
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"
