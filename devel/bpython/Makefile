# $OpenBSD: Makefile,v 1.8 2015/03/15 10:18:48 jasper Exp $

COMMENT=	fancy interface to the Python interpreter

MODPY_EGG_VERSION=0.14.1
DISTNAME=	bpython-${MODPY_EGG_VERSION}
CATEGORIES=	devel

REVISION=	0

HOMEPAGE=	http://bpython-interpreter.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=	${HOMEPAGE}/releases/

MODULES=	lang/python

MODPY_SETUPTOOLS=Yes

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/py-curtsies<0.2.0 \
		devel/py-greenlet \
		devel/py-urwid \
		textproc/py-pygments
BUILD_DEPENDS=	devel/py-babel \
		textproc/py-sphinx
TEST_DEPENDS=	devel/py-mock \
		devel/py-twisted/core \
		${RUN_DEPENDS}

.include <bsd.port.mk>
