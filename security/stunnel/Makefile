# $OpenBSD: Makefile,v 1.75 2014/10/27 13:16:48 gonzalo Exp $

COMMENT=	SSL encryption wrapper for standard network daemons

DISTNAME=	stunnel-5.06
CATEGORIES=	security

# GPLv2+ with OpenSSL exemption
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto pthread ssl util z

HOMEPAGE=	http://www.stunnel.org/

# Origin server: https://www.stunnel.org/downloads/archive/5.x/
# Doesn't currently work with ftp(1) ssl support.
MASTER_SITES=	http://ftp.nluug.nl/pub/networking/stunnel/archive/5.x/ \
		http://mirror.bit.nl/stunnel/archive/5.x/ \
		ftp://ftp.stunnel.org/stunnel/archive/5.x/

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-ssl=/usr \
			--with-threads=fork \
			--disable-libwrap
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/auto
NO_TEST=		Yes
USE_GMAKE=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/stunnel ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/doc/stunnel.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/stunnel
	${INSTALL_DATA} ${WRKBUILD}/tools/stunnel.conf-sample \
		${PREFIX}/share/examples/stunnel

.include <bsd.port.mk>
