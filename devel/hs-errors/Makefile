# $OpenBSD: Makefile,v 1.2 2014/11/27 21:45:36 kili Exp $

COMMENT =		simplified error-handling

DISTNAME =		errors-1.4.2
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-either>=3.1,<3.5 \
			devel/hs-safe>=0.3.3,<0.4

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
