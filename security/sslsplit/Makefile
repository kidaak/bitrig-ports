# $OpenBSD: Makefile,v 1.8 2015/03/16 08:50:08 sthen Exp $

COMMENT=	transparent and scalable SSL/TLS interception

DISTNAME=	sslsplit-0.4.11
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	security

HOMEPAGE=	https://www.roe.ch/SSLsplit

# SSLsplit: BSD, khash.h (header-based library): MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto event_core event_extra event_openssl event_pthreads
WANTLIB += pthread ssl

MASTER_SITES=	https://mirror.roe.ch/rel/sslsplit/

LIB_DEPENDS=	devel/libevent2
# following is expected with MALLOC_FLAGS J:
# "cert.t.c:66:F:cert_refcount_inc:cert_refcount_inc_01:0: refcount mismatch"
# the test deliberately does a use-after-free
TEST_DEPENDS=	devel/check
MAKE_FLAGS=	MANDIR=man PREFIX=${TRUEPREFIX}

USE_GMAKE=	Yes

MAKE_FILE=	GNUmakefile

.include <bsd.port.mk>
