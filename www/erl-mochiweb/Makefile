# $OpenBSD: Makefile,v 1.5 2014/12/28 16:35:06 jasper Exp $

COMMENT=	Erlang library for building lightweight HTTP servers

V=		2.10.0
GH_ACCOUNT=	mochi
GH_PROJECT=	mochiweb
GH_TAGNAME=	v$V
DISTNAME=	${GH_PROJECT}-$V
PKGNAME=	erl-${DISTNAME}
CATEGORIES=	www

HOMEPAGE=	https://github.com/basho/mochiweb

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/erlang

SUBST_VARS+=	V

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,scripts,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include/
	${INSTALL_DATA} ${WRKSRC}/scripts/*.erl ${ERL_LIBDIR}/scripts/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
