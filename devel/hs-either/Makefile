# $OpenBSD: Makefile,v 1.2 2014/11/27 21:45:36 kili Exp $

COMMENT =		an either monad transformer

DISTNAME =		either-3.4.1
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-MonadRandom>=0.1,<0.2 \
			devel/hs-mtl>=2.0,<2.2 \
			devel/hs-semigroupoids>=3,<4 \
			devel/hs-semigroups>=0.8.3.1,<1

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
