# $OpenBSD: Makefile,v 1.10 2014/12/26 09:17:38 benoit Exp $

COMMENT =	perl binding for Redis database

DISTNAME =	Redis-1.976
CATEGORIES =	databases

EPOCH =		0

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Try-Tiny \
			net/p5-IO-Socket-Timeout

BUILD_DEPENDS =		devel/p5-Test-CPAN-Meta

TEST_DEPENDS +=		devel/p5-Test-Deep \
			devel/p5-Test-Fatal \
			devel/p5-Test-SharedFork \
			net/p5-Test-TCP \
			devel/p5-IO-String \
			databases/redis

.include <bsd.port.mk>
