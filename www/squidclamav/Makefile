# $OpenBSD: Makefile,v 1.8 2015/01/09 18:16:56 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	clamd-based virus scanner for c-icap

DISTNAME=	squidclamav-6.12

CATEGORIES=	www

HOMEPAGE=	http://squidclamav.darold.net/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=squidclamav/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/c-icap/c-icap>=0.3.1

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.68
CONFIGURE_ARGS=	--with-c-icap=${LOCALBASE}

FAKE_FLAGS=	DEFAULT_DOC_DIR=${PREFIX}/share/doc/squidclamav \
		CONFIGDIR=${PREFIX}/share/examples/squidclamav

MODGNU_CONFIG_GUESS_DIRS=	${WRKDIST}/config

pre-configure:
	perl -pi -e 's,/etc/squidclamav.conf,${SYSCONFDIR}/squidclamav.conf,' \
	    ${WRKSRC}/src/squidclamav.h

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/squidclamav

post-install:
	rm -f ${PREFIX}/lib/c_icap/squidclamav.la
	mv ${PREFIX}/share/c_icap/templates/squidclamav/en/MALWARE_FOUND{,.default}

.include <bsd.port.mk>
