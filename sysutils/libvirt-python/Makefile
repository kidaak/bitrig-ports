# $OpenBSD: Makefile,v 1.11 2015/03/15 10:09:42 jasper Exp $

SHARED_ONLY =		Yes

COMMENT =		libvirt virtualization API python bindings

MODPY_EGG_VERSION =	1.2.13
DISTNAME =		libvirt-python-${MODPY_EGG_VERSION}
CATEGORIES =		sysutils

HOMEPAGE =		http://libvirt.org/python.html

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		ftp://libvirt.org/libvirt/python/

MODULES =		lang/python

WANTLIB =		pthread virt virt-lxc virt-qemu ${MODPY_WANTLIB}

LIB_DEPENDS =		sysutils/libvirt>=${MODPY_EGG_VERSION}

TEST_DEPENDS =		devel/py-nose \
			textproc/py-lxml \
			${BASE_PKGPATH}=${MODPY_EGG_VERSION}

do-test:
	perl -pi -e 's,/usr/bin/nosetests,${LOCALBASE}/bin/nosetests,' \
		${WRKSRC}/setup.py
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>
