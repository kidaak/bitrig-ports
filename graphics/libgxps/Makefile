# $OpenBSD: Makefile,v 1.1.1.1 2014/10/15 13:28:33 ajacoutot Exp $

COMMENT=		GObject library for handling and rendering XPS documents

GNOME_PROJECT=		libgxps
GNOME_VERSION=		0.2.2

SHARED_LIBS +=	gxps                      0.0 # 3.1

CATEGORIES=		graphics

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xrender archive bz2 c cairo expat ffi fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 jpeg
WANTLIB += lcms2 lzma m pcre pixman-1 png pthread pthread-stubs
WANTLIB += tiff xcb xcb-render xcb-shm z

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS=		docbook gobject-introspection

LIB_DEPENDS=		archivers/libarchive \
			graphics/cairo \
			graphics/lcms2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
