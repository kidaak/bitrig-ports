# $OpenBSD: Makefile,v 1.2 2014/10/12 23:08:48 ajacoutot Exp $

COMMENT =		python package to check certificates using the OpenBSD CA

MODPY_EGG_VERSION =	14.05.14
DISTNAME =		certifi-${MODPY_EGG_VERSION}
PKGNAME =		py-certifi-${MODPY_EGG_VERSION}
CATEGORIES =		devel security
REVISION =		0

HOMEPAGE =		http://python-requests.org

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=c/certifi/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
