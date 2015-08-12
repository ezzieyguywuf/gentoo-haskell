# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Name resolution library for Haskell"
HOMEPAGE="http://documentup.com/haskell-suite/haskell-names"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/aeson:=[profile?]
	>=dev-haskell/cabal-1.14:=[profile?]
	dev-haskell/data-lens-light:=[profile?]
	>=dev-haskell/haskell-packages-0.2:=[profile?]
	>=dev-haskell/haskell-src-exts-1.16:=[profile?]
	dev-haskell/hse-cpp:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/tagged:=[profile?]
	dev-haskell/transformers:=[profile?]
	dev-haskell/traverse-with-class:=[profile?]
	>=dev-haskell/type-eq-0.4.2:=[profile?]
	>=dev-haskell/uniplate-1.5.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/filemanip
		>=dev-haskell/pretty-show-1.6.1 <dev-haskell/pretty-show-1.7
		dev-haskell/tasty
		>=dev-haskell/tasty-golden-2.2.1
		dev-haskell/utf8-string )
"
