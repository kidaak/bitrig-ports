# $OpenBSD: Makefile,v 1.29 2014/11/25 10:26:28 jasper Exp $

COMMENT=		configuration editing tool and API

DISTNAME=		augeas-1.3.0
REVISION=		0
CATEGORIES=		sysutils devel

SHARED_LIBS +=  augeas                    0.0 # 16.0
SHARED_LIBS +=  fa                        0.0 # 5.0

HOMEPAGE=		http://augeas.net/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://download.augeas.net/

MODULES=		converters/libiconv

LIB_DEPENDS=		textproc/libxml \
			devel/readline

WANTLIB += c lzma m ncurses readline xml2 z

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-compile-warnings=yes
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/man/augparse.1

.include <bsd.port.mk>
