# $OpenBSD: Makefile,v 1.1.1.1 2014/10/23 19:25:21 nigel Exp $

COMMENT =	a simple http server class

DISTNAME =	HTTP-Daemon-6.01
CATEGORIES =	www
CPAN_AUTHOR =	GAAS

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

RUN_DEPENDS =	www/p5-HTTP-Date>=6.0 \
		www/p5-HTTP-Message>=6.0 \
		www/p5-LWP-MediaTypes>=6.0

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
