# $OpenBSD: Makefile,v 1.7 2015/09/29 10:51:54 sthen Exp $

COMMENT=		Python module dependency analysis tool

MODPY_EGG_VERSION=	0.12.1
DISTNAME=		modulegraph-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		http://pypi.python.org/pypi/modulegraph/

# MIT
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-altgraph
TEST_DEPENDS=	${RUN_DEPENDS}

MODPY_PI =		Yes

.include <bsd.port.mk>
