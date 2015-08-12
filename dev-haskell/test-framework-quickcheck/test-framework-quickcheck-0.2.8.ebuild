# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# ebuild generated by hackport 0.2.11

EAPI="4"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="QuickCheck support for the test-framework package"
HOMEPAGE="http://batterseapower.github.com/test-framework/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc64 ~x86"
IUSE=""

RDEPEND="<dev-haskell/quickcheck-2
		>=dev-haskell/test-framework-0.2.0
		>=dev-lang/ghc-6.10.4"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2.3"

src_prepare() {
	sed -e 's@deepseq >= 1.1 && < 1.3@deepseq >= 1.1 \&\& < 1.4@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
