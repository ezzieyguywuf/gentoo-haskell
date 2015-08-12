# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Cryptographic numbers: functions and algorithms"
HOMEPAGE="http://github.com/vincenthz/hs-crypto-numbers"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/crypto-random-api-0.2*:=[profile?]
		dev-haskell/vector:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		test? ( dev-haskell/hunit
			>=dev-haskell/quickcheck-2
			>=dev-haskell/test-framework-0.3.3
			dev-haskell/test-framework-hunit
			>=dev-haskell/test-framework-quickcheck2-0.2.9
		)
		>=dev-haskell/cabal-1.8"
