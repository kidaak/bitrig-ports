# $OpenBSD: Makefile,v 1.3 2014/08/31 14:21:12 jturner Exp $

COMMENT =		create and verify cryptographic signatures

VERSION =		2.1.0
DISTNAME =		reop-${VERSION}
CATEGORIES =		security sysutils

HOMEPAGE =		https://github.com/tedu/reop/
MASTER_SITES =		https://github.com/tedu/reop/releases/download/${VERSION}/
EXTRACT_SUFX =		.tgz

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c sodium util
LIB_DEPENDS =		security/libsodium>=0.7.0

ALL_TARGET =		reop
MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lutil -lsodium"

do-test:
	@cd ${WRKSRC}/tests && sh test.sh

do-install:
	${INSTALL_MAN} ${WRKSRC}/reop.1 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKSRC}/reop ${PREFIX}/bin

.include <bsd.port.mk>
