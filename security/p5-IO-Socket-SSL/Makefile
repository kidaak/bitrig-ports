# $OpenBSD: Makefile,v 1.86 2015/01/15 13:31:05 bluhm Exp $

COMMENT =		perl interface to SSL sockets

DISTNAME =		IO-Socket-SSL-2.010

CATEGORIES =		security

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		security/p5-Net_SSLeay>=1.59
TEST_DEPENDS =		net/p5-IO-Socket-INET6>=2.62 \
			converters/p5-Net-IDN-Encode \
			www/p5-URI>=1.50

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	example

.include <bsd.port.mk>
