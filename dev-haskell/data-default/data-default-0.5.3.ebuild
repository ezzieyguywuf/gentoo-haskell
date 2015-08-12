# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A class for types with a default value"
HOMEPAGE="http://hackage.haskell.org/package/data-default"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 ~ppc64 ~sparc x86 ~amd64-linux ~x86-linux ~ppc-macos"
IUSE=""

RDEPEND="dev-haskell/data-default-class:=[profile?]
		dev-haskell/data-default-instances-base:=[profile?]
		dev-haskell/data-default-instances-containers:=[profile?]
		dev-haskell/data-default-instances-dlist:=[profile?]
		dev-haskell/data-default-instances-old-locale:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
