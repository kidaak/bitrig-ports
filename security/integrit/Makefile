# $OpenBSD: Makefile,v 1.12 2015/01/22 21:17:47 naddy Exp $

COMMENT=		file integrity checker

DISTNAME=		integrit-4.1
REVISION=		0
CATEGORIES=		security

HOMEPAGE=		http://sourceforge.net/projects/integrit/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=integrit/}

CONFIGURE_STYLE=	gnu

ALL_TARGET=		integrit utils

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/integrit
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/integrit
	@cd ${WRKSRC}/examples && ${INSTALL_DATA} README crontab install_db \
	  integrit_check viewreport ${PREFIX}/share/doc/integrit 
	@cd ${WRKSRC}/examples && ${INSTALL_DATA} *.conf \
	  ${PREFIX}/share/examples/integrit

.include <bsd.port.mk>
