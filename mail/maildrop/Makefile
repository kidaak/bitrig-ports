# $OpenBSD: Makefile,v 1.51 2014/11/22 22:20:09 sthen Exp $

COMMENT-main=		mail delivery agent with filtering abilities
COMMENT-utils=		quota tools for the Courier mail suite

V=			2.7.1
REVISION=		1
DISTNAME=		maildrop-$V
PKGNAME-main=		maildrop-$V
FULLPKGNAME-utils=	courier-utils-$V
FULLPKGPATH-utils=	mail/maildrop,-utils
CATEGORIES=		mail

HOMEPAGE=		http://www.courier-mta.org/maildrop/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=courier/}
EXTRACT_SUFX=		.tar.bz2

FLAVORS=		postfix no_trashquota
FLAVOR?=

MULTI_PACKAGES=		-main -utils

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="${CFLAGS:C/ *$//} -I${LOCALBASE}/include" \
			ac_cv_header_fam_h=no \
			ac_cv_lib_fam_FAMOpen=no \
			ac_cv_lib_db_dbopen=no \
			ac_cv_func_dbopen=no
MAKE_ENV=		INCLUDES="-I${LOCALBASE}/include" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			ac_cv_header_fam_h=no ac_cv_lib_fam_FAMOpen=no

# do not pick up Berkeley DB in bdbobj
CONFIGURE_ENV+=		ac_cv_lib_db_dbopen=no \
			ac_cv_lib_db_db_open=no \
			ac_cv_lib_db_db_env_create=no \
			ac_cv_func_dbopen=no

CONFIGURE_ARGS=		--sysconfdir=${SYSCONFDIR}/courier \
			--with-etcdir=${SYSCONFDIR}/courier \
			--datadir=${PREFIX}/share/doc \
			--enable-static \
			--with-db=gdbm \
			--enable-maildrop-gid=_courier \
			--enable-maildrop-uid=_courier \
			--enable-syslog=1 \
			--enable-restrict-trusted=1 \
			--enable-keep-fromline=1 \
			--enable-use-flock=1 \
			--enable-use-dotlock=1 \
			--enable-authlib \
			--with-dirsync \
			--enable-maildirquota \
			--with-default-maildrop="./Maildir"

DOCFILES=		${WRKSRC}/README \
			${WRKSRC}/INSTALL \
			${WRKSRC}/UPGRADE \
			${WRKSRC}/README.postfix \
			${WRKSRC}/maildroptips.txt \
			${WRKSRC}/libs/maildir/README.sharedfolders.txt \
			${WRKSRC}/libs/maildir/README.maildirquota.txt \
			${WRKSRC}/libs/maildir/quotawarnmsg


.if ${FLAVOR:Mpostfix}
CONFIGURE_ARGS+=	--enable-sendmail=/usr/local/sbin/sendmail
CONFIGURE_ARGS+=	--enable-trusted-users="root _courier _postfix"
CONFIGURE_ARGS+=	--enable-trusted-groups="wheel _courier _postdrop"
# this sets the default version as postfix/stable if postfix is not
# already installed, but matches postfix-* so can still be installed
# alongside postfix/snapshot.
RUN_DEPENDS-main=	mail/postfix/stable
.else
CONFIGURE_ARGS+=	--enable-sendmail=/usr/sbin/sendmail
CONFIGURE_ARGS+=	--enable-trusted-users="root _courier"
CONFIGURE_ARGS+=	--enable-trusted-groups="wheel _courier"
.endif

.if ${FLAVOR:Mno_trashquota}
CONFIGURE_ARGS+=	--without-trashquota
.else
CONFIGURE_ARGS+=	--with-trashquota
.endif

MODULES=		devel/gettext

LIB_DEPENDS=		devel/libidn

WANTLIB =		c idn

WANTLIB-main=		${WANTLIB} gdbm m c++ c++abi gdbm>=3 pcre>=1 courierauth
WANTLIB-main+=		pthread
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			databases/gdbm \
			devel/pcre \
			mail/courier-authlib

USE_GROFF=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/maildrop
	@for i in ${DOCFILES}; do \
	    if [ -f $$i ]; then \
		${INSTALL_DATA} $$i ${PREFIX}/share/doc/maildrop ;\
	    fi \
	done
	${INSTALL_DATA} ${WRKSRC}/libs/unicode/README \
	    ${PREFIX}/share/doc/maildrop/README.unicode.txt

.include <bsd.port.mk>
