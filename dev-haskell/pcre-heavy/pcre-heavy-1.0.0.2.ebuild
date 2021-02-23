# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A regexp library on top of pcre-light you can actually use"
HOMEPAGE="https://github.com/myfreeweb/pcre-heavy"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="public-domain"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RESTRICT=test # ambiguous modules: base-compat base-compat-batteries

RDEPEND=">=dev-haskell/base-compat-0.8.0:=[profile?]
	dev-haskell/pcre-light:=[profile?]
	dev-haskell/semigroups:=[profile?]
	dev-haskell/string-conversions:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/doctest
		dev-haskell/glob )
"
