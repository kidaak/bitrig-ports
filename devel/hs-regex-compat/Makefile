# $OpenBSD: Makefile,v 1.20 2014/11/22 20:59:41 kili Exp $

COMMENT =		module layer over regex-posix to replace Text.Regex

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		regex-compat-0.95.1
REVISION =		2
CATEGORIES =		devel

HOMEPAGE =		http://sourceforge.net/projects/lazy-regex

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-regex-base>=0.93 \
			devel/hs-regex-posix>=0.95.1
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
