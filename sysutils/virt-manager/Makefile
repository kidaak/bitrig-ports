# $OpenBSD: Makefile,v 1.8 2014/10/19 12:43:46 jasper Exp $

COMMENT=		GUI for managing virtual machines through libvirt

DISTNAME=		virt-manager-1.1.0
REVISION=		1
CATEGORIES=		sysutils x11

HOMEPAGE=		http://virt-manager.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/download/sources/virt-manager/

MODULES=		devel/dconf \
			lang/python \
			textproc/intltool

RUN_DEPENDS=		devel/libvirt-glib \
			devel/py-gobject3 \
			devel/vte3>=0.38 \
			misc/libosinfo>=0.2.11 \
			net/py-ipaddr \
			sysutils/libvirt-python \
			textproc/libxml,-python \
			www/py-urlgrabber \
			x11/gtk-vnc \
			x11/spice-gtk

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

NO_BUILD=		Yes

RUN_DEPENDS +=		devel/desktop-file-utils \
			x11/gtk+2,-guic

MODPY_ADJ_FILES=	virt-clone virt-convert virt-install virt-manager \
			virt-xml

pre-configure:
	${SUBST_CMD} ${WRKSRC}/virtcli/cliconfig.py

do-test:
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>
