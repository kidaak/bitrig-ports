# $OpenBSD: Makefile,v 1.12 2015/03/16 18:07:39 naddy Exp $

COMMENT=	c++ unit testing framework
DISTNAME=	cppunit-1.12.1
SHARED_LIBS +=	cppunit              3.0      # .1.0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cppunit/}
REVISION=	3

HOMEPAGE=	http://cppunit.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=		Yes
WANTLIB=		c m
WANTLIB+=		c++ c++abi pthread

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/config/
CONFIGURE_ARGS+=	--disable-doxygen

.include <bsd.port.mk>
