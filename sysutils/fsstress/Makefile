# $OpenBSD: Makefile,v 1.7 2013/03/11 11:41:30 espie Exp $

COMMENT=		file system/VFS layer stress tester

DISTNAME=		fsstress-1.0
REVISION =		2
EXTRACT_SUFX=		.tgz
CATEGORIES=		sysutils

# GPLv2 (only)
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	http://bofh.ucs.ualberta.ca/beck/fsstress/

NO_TEST=	Yes
WANTLIB=	c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fsstress ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fsstress
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/fsstress
	${INSTALL_DATA} ${WRKSRC}/dotest.sample ${PREFIX}/share/doc/fsstress

.include <bsd.port.mk>
