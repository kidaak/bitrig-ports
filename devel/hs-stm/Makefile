# $OpenBSD: Makefile,v 1.19 2014/11/22 20:59:42 kili Exp $

COMMENT =		Software Transactional Memory

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		stm-2.4.2
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
