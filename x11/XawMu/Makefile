# $OpenBSD: Makefile,v 1.15 2015/03/16 18:07:58 naddy Exp $

COMMENT=		modern look Athena widgets

VERSION=		1.5
DISTNAME=		XawM-${VERSION}u
PKGNAME=		XawMu-${VERSION}
REVISION=		4

SHARED_LIBS=		XawM 1.0
CATEGORIES=		x11 devel

HOMEPAGE=		http://xawm.sourceforge.net/

MASTER_SITES=		http://siag.nu/pub/widgets/

# X11/badly worded
PERMIT_PACKAGE_CDROM=	Yes


CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
USE_X11 =		Yes

NO_TEST=		Yes

.include <bsd.port.mk>
