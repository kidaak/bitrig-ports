# $OpenBSD: Makefile,v 1.200 2015/03/16 20:02:16 landry Exp $

COMMENT-main =		Mozilla e-mail, rss and usenet client
COMMENT-lightning =	Mozilla Thunderbird calendar extension

# Don't forget to bump mail/thunderbird-i18n after updates.

MOZILLA_VERSION =	31.5.0
MOZILLA_BRANCH =	esr31
MOZILLA_PROJECT =	thunderbird
MOZILLA_CODENAME =	mail

MULTI_PACKAGES =	-main -lightning
PKGNAME-main =		${PKGNAME}
PKGNAME-lightning =	lightning-3.3.5
EPOCH-lightning =	0

HOMEPAGE =	http://www.mozilla.org/thunderbird/

SO_VERSION =	29.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.

MOZILLA_LIBS = ldap60 ldif60 mozalloc mozgnome prldap60 xul calbasecomps

#.if ${FLAVOR:L:Mdebug}
#MOZILLA_LIBS +=	addrbook bayesflt fts3tok mailview mime mimeemitter msgbase \
#	msgcompose msgdb msgimap msglocal msgmdn msgnews vcard msgbaseutil
#.endif

CATEGORIES=	mail news

# MPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	www/mozilla devel/gettext lang/python
MODPY_RUNDEP =	No

# Regression tests are too hard to adapt to run here
NO_TEST =	Yes

MODGNU_CONFIG_GUESS_DIRS +=	${WRKSRC}/build/autoconf \
				${WRKSRC}/ldap/sdks/c-sdk/config/autoconf \
				${WRKSRC}/mozilla/build/autoconf \
				${WRKSRC}/mozilla/intl/icu/source \
				${WRKSRC}/mozilla/ipc/chromium/src/third_party/libevent \
				${WRKSRC}/mozilla/js/src/ctypes/libffi \
				${WRKSRC}/mozilla/memory/jemalloc/src \
				${WRKSRC}/mozilla/modules/freetype2/builds/unix \
				${WRKSRC}/mozilla/nsprpub/build/autoconf \
				${WRKSRC}/mozilla/toolkit/crashreporter/google-breakpad/autotools \
				${WRKSRC}/mozilla/toolkit/crashreporter/google-breakpad/src/third_party/glog

CONFIGURE_STYLE =	autoconf no-autoheader

LIB_DEPENDS-lightning = STEM->=${MOZILLA_VERSION:S/b/beta/}:${BUILD_PKGPATH},-main
WANTLIB-lightning =	lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/xul \
			lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/mozalloc \
			c m nspr4 plc4 plds4 pthread
WANTLIB-lightning +=	c++ c++abi

# build lightning xpi
CONFIGURE_ARGS +=	--enable-calendar
# relies on pulseaudio for sound and broken at runtime
CONFIGURE_ARGS +=	--disable-webrtc

CONFIGURE_ARGS +=	--enable-gstreamer=1.0
BUILD_DEPENDS +=	multimedia/gstreamer1/plugins-base audio/pulseaudio

# to be able to link when building with clang on i386
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS +=       --disable-debug-symbols
.endif

ALL_TARGET =	default

MOZILLA_AUTOCONF_DIRS =		ldap/sdks/c-sdk mozilla mozilla/js/src

GNU_ARCH =	${MACHINE_ARCH:S/amd64/x86_64/}
# guid for gdata-provider comes from em:id in install.rdf
GUIDS =	gdata-provider {a62ef8ec-5fdc-40c2-873c-223b8a6925cc} \
	lightning {e2fda1a4-762b-4020-b5ad-a41df1933103}

EXTDIR =	${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/extensions/

CONFIGURE_ENV+=MOZCONFIG=${WRKSRC}/mozilla/.mozconfig
# MOZCONFIG is mandatory now even if empty ?
post-patch:
	touch ${WRKSRC}/mozilla/.mozconfig

post-install:
.for xpi guid in ${GUIDS}
	${UNZIP} -oq ${WRKBUILD}/mozilla/dist/xpi-stage/${xpi}*.xpi -d ${EXTDIR}/${guid}
.endfor
	# install prefs
	${SUBST_DATA} ${FILESDIR}/all-openbsd.js \
		${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/defaults/pref/all-openbsd.js
	# install desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/ ; \
	${SUBST_DATA} ${FILESDIR}/${MOZILLA_PROJECT}.desktop \
		${PREFIX}/share/applications/${MOZILLA_PROJECT}.desktop ; \
	# install icon for desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/chrome/icons/default/default256.png \
		${PREFIX}/share/pixmaps/${MOZILLA_PROJECT}.png

	# remove useless empty dirs ?
	rm -Rf ${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/modules/

.include <bsd.port.mk>
