# $OpenBSD: Makefile,v 1.19 2015/01/15 22:11:15 halex Exp $

COMMENT=		command line client for mpd

VER=			0.26
DISTNAME=		mpc-${VER}
REVISION=		0
CATEGORIES=		audio

HOMEPAGE=		http://www.musicpd.org/clients/mpc/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c mpdclient
LIB_DEPENDS=		audio/libmpdclient>=2.2

MASTER_SITES=		http://www.musicpd.org/download/mpc/${VER:R}/

MODULES=		converters/libiconv

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		ac_cv_func_iconv=yes
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib -liconv"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mpc
	${INSTALL_SCRIPT} \
		${WRKSRC}/doc/mpd-m3u-handler.sh \
		${WRKSRC}/doc/mpd-pls-handler.sh \
		${WRKSRC}/doc/mppledit \
		${PREFIX}/share/examples/mpc
	${INSTALL_DATA} ${WRKSRC}/doc/mpc-completion.bash \
		${PREFIX}/share/examples/mpc

.include <bsd.port.mk>
