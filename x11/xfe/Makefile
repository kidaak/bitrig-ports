# $OpenBSD: Makefile,v 1.34 2014/11/08 19:03:59 dcoppa Exp $

COMMENT=	MS-Explorer like file manager for X

DISTNAME=	xfe-1.37
REVISION=	3
CATEGORIES=	x11

HOMEPAGE=	http://roland65.free.fr/xfe/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xfe/}

WANTLIB +=	X11 Xft c freetype m png pthread util z
WANTLIB +=	c++ c++abi

MODULES=	devel/gettext textproc/intltool
LIB_DEPENDS =	devel/fox
WANTLIB +=	FOX-1.6>=1

RUN_DEPENDS=	devel/desktop-file-utils

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/fox-1.6 \
			-I${X11BASE}/include \
			-I${X11BASE}/include/freetype2" \
		LDFLAGS="-L${LOCALBASE}/lib \
			-L${X11BASE}/lib -lXft -pthread"

MAKE_FLAGS=	CXXFLAGS="${CXXFLAGS} -DHAVE_XFT_H"

.include <bsd.port.mk>
