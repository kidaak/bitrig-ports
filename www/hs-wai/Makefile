# $OpenBSD: Makefile,v 1.9 2014/12/03 21:56:45 kili Exp $

COMMENT =		web application interface

DISTNAME =		wai-1.4.0.1
REVISION =		1
CATEGORIES =		devel www
HOMEPAGE =		https://github.com/snoyberg/wai

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-blaze-builder>=0.2.1.4,<0.4 \
			devel/hs-conduit>=0.5,<1.1 \
			devel/hs-network>=2.2.1.5 \
			devel/hs-text>=0.7 \
			devel/hs-vault>=0.1,<0.3 \
			www/hs-http-types>=0.7

.include <bsd.port.mk>
