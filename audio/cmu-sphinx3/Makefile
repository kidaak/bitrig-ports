# $OpenBSD: Makefile,v 1.12 2015/03/16 18:07:34 naddy Exp $

COMMENT=	acoustic decoder for CMU Sphinx3 speech recognition system

DISTNAME=	sphinx3-0.8
PKGNAME=	cmu-${DISTNAME}
REVISION=	6
CATEGORIES=	audio

SHARED_LIBS=	s3decoder	0.0

HOMEPAGE=	http://cmusphinx.sourceforge.net/

# CMU
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cmusphinx/}

WANTLIB=	blas c lapack m pthread sndio ${MODFORTRAN_WANTLIB} \
		sphinxad sphinxbase

MODULES=	converters/libiconv fortran
MODFORTRAN_COMPILER = g77

LIB_DEPENDS=	audio/cmu-sphinxbase \
		${MODFORTRAN_LIB_DEPENDS}


CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

post-extract:
	cp ${FILESDIR}/compare_table.pl ${WRKSRC}/src/tests/regression

.include <bsd.port.mk>
