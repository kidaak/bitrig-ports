# $OpenBSD: Makefile,v 1.3 2015/01/24 11:02:04 benoit Exp $

COMMENT =	Template Renderer Plugin for Mojolicious

MODULES =	cpan
DISTNAME =	Mojolicious-Plugin-TtRenderer-1.54
CATEGORIES =	textproc

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =	PLICEASE

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS =	sysutils/p5-Capture-Tiny \
		textproc/p5-Template \
		www/p5-Mojo

.include <bsd.port.mk>
