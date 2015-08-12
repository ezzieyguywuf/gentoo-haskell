# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Automagically generate the HUnit- and Quickcheck-bulk-code using Template Haskell"
HOMEPAGE="http://github.com/finnsson/test-generator"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/haskell-src-exts:=[profile?]
		>=dev-haskell/language-haskell-extract-0.2:=[profile?]
		dev-haskell/regex-posix:=[profile?]
		dev-haskell/test-framework:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
