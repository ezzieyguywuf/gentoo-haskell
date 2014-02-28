# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="GUI framework that uses the web browser as a display."
HOMEPAGE="http://www.haskell.org/haskellwiki/Threepenny-gui"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="buildexamples rebug"

RDEPEND=">=dev-haskell/aeson-0.6:=[profile?] <dev-haskell/aeson-0.7:=[profile?]
	>=dev-haskell/attoparsec-enumerator-0.3:=[profile?] <dev-haskell/attoparsec-enumerator-0.4:=[profile?]
	>=dev-haskell/data-default-0.5:=[profile?] <dev-haskell/data-default-0.6:=[profile?]
	>=dev-haskell/hashable-1.1.0:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/monadcatchio-transformers-0.3:=[profile?] <dev-haskell/monadcatchio-transformers-0.4:=[profile?]
	>=dev-haskell/network-2.3.0:=[profile?] <dev-haskell/network-2.5:=[profile?]
	>=dev-haskell/safe-0.3:=[profile?] <dev-haskell/safe-0.4:=[profile?]
	>=dev-haskell/snap-core-0.9:=[profile?] <dev-haskell/snap-core-0.10:=[profile?]
	>=dev-haskell/snap-server-0.9:=[profile?] <dev-haskell/snap-server-0.10:=[profile?]
	>=dev-haskell/stm-2.3:=[profile?] <dev-haskell/stm-2.5:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.2:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?] <dev-haskell/transformers-0.4:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?] <dev-haskell/utf8-string-0.4:=[profile?]
	>=dev-haskell/vault-0.3:=[profile?] <dev-haskell/vault-0.4:=[profile?]
	>=dev-haskell/websockets-0.8:=[profile?] <dev-haskell/websockets-0.9:=[profile?]
	>=dev-haskell/websockets-snap-0.8:=[profile?] <dev-haskell/websockets-snap-0.9:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	buildexamples? ( dev-haskell/parsec:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag buildexamples buildexamples) \
		$(cabal_flag rebug rebug)
}
