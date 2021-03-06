# $OpenBSD: Makefile,v 1.205 2015/03/21 14:11:19 robert Exp $

ONLY_FOR_ARCHS=		amd64
DPB_PROPERTIES=		parallel

COMMENT=		Chromium browser

V=			41.0.2272.101
DISTNAME=		chromium-${V}

CATEGORIES=		www

HOMEPAGE=		https://www.chromium.org/Home

EXTRACT_SUFX=		.tar.xz

FLAVORS=		debug
FLAVOR?=

# BSD-like
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP =	Yes

MASTER_SITES=	https://commondatastorage.googleapis.com/chromium-browser-official/

MODULES=	lang/python

MODPY_RUNDEP=	No

PATCHORIG=	.orig.port

WANTLIB += X11 Xext Xfixes Xrender Xss c cairo cups dbus-1 event
WANTLIB += execinfo expat fontconfig freetype gconf-2 gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0
WANTLIB += png pthread speex opus
WANTLIB += xml2 xslt
WANTLIB += usb-1.0 sndio
WANTLIB += Xcomposite
WANTLIB += Xi Xtst
WANTLIB += Xdamage
WANTLIB += Xcursor Xrandr gio-2.0
WANTLIB += jpeg nspr4 nss3 nssutil3 plc4 smime3
WANTLIB += c++ c++abi

RUN_DEPENDS=	devel/xdg-utils \
		devel/desktop-file-utils \
		graphics/libexif \
		x11/gnome/libgnome-keyring \
		x11/gtk+2,-guic
BUILD_DEPENDS=	archivers/bzip2 \
		devel/gperf \
		devel/bison \
		devel/flex \
		devel/yasm \
		shells/bash \
		sysutils/flock \
		sysutils/pciutils \
		x11/gnome/libgnome-keyring
BUILD_DEPENDS+=	devel/ninja
LIB_DEPENDS=	devel/libexecinfo \
		devel/libusb1 \
		security/nss \
		devel/gconf2 \
		textproc/libxslt \
		x11/gtk+2 \
		audio/speex \
		audio/opus \
		print/cups,-libs

.include <bsd.own.mk>

# Set BUILDTYPE to Debug for a debug build
.if ${FLAVOR:Mdebug}
BUILDTYPE=	Debug
.else
BUILDTYPE=	Release
.endif

TEST_TARGET=	base_unittests

CONFIGURE_STYLE=none # prevent python MODULE from overriding do-build
CONFIGURE_ENV=	CPPFLAGS="-idirafter ${LOCALBASE}/include -idirafter ${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		GYP_GENERATORS=ninja

ALL_TARGET=	chrome

BUILDDIR=	${WRKSRC}/out/${BUILDTYPE}

GYP_DEFS=	-Duse_system_bzip2=1 \
		-Duse_system_libevent=1 \
		-Duse_system_libjpeg=1 \
		-Duse_system_libpng=1 \
		-Duse_system_libusb=1 \
		-Duse_system_libvpx=0 \
		-Duse_system_libxml=1 \
		-Duse_system_speex=1 \
		-Duse_system_opus=1 \
		-Duse_system_sqlite=0 \
		-Duse_system_yasm=1 \
		-Duse_system_zlib=0 \
		-Duse_system_ssl=0 \
		-Duse_system_icu=0 \
		-Ddisable_nacl=1 \
		-Dlinux_breakpad=0 \
		-Duse_allocator=none \
		-Dlinux_strip_binary=0 \
		-Dlinux_use_heapchecker=0 \
		-Denable_webrtc=0 \
		-Denable_one_click_signin=1 \
		-Duse_kerberos=0 \
		-Duse_sndio=1 \
		-Duse_aura=1 \
		-Dclang=1 \
		-Dclang_use_chrome_plugins=0 \
		-Dwerror= \
		-Dno_gc_sections=1 \
		-Ddisable_fatal_linker_warnings=1 \
		-DOS=openbsd

GYP_DEFS+=	-Dffmpeg_branding=Chrome \
		-Dproprietary_codecs=1

.if ${FLAVOR:Mdebug}
GYP_DEFS+=	-Dremove_webcore_debug_symbols=1
MAKE_ENV+=	V=1
.endif

MODPY_ADJ_FILES=build/linux/unbundle/replace_gyp_files.py

pre-configure:
	${SUBST_CMD} ${WRKSRC}/content/common/plugin_list_posix.cc
	@ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
.for _arch in x64 ia32
	@cp -pR ${WRKSRC}/third_party/ffmpeg/chromium/config/Chrome/linux/${_arch}/libavutil \
		${WRKSRC}/third_party/ffmpeg/chromium/config/Chrome/openbsd/${_arch}/libavutil
.endfor
	@mkdir -p ${WRKSRC}/media/audio/sndio
	@cp ${FILESDIR}/sndio_output.{cc,h} ${WRKSRC}/media/audio/sndio

# gyp_chromium generates all the Makefiles from gyp
do-configure:
	cd ${WRKSRC} && \
		build/linux/unbundle/replace_gyp_files.py ${GYP_DEFS} && \
		env -i ${CONFIGURE_ENV} ${MODPY_BIN} build/gyp_chromium \
		${GYP_DEFS} "--depth=${WRKSRC}"

do-build:
	@cd ${WRKSRC} && env -i ${MAKE_ENV} ninja \
		-j ${MAKE_JOBS} -C out/${BUILDTYPE} ${ALL_TARGET}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/chrome
	${INSTALL_PROGRAM} ${BUILDDIR}/chrome ${PREFIX}/chrome
	${SUBST_PROGRAM} ${FILESDIR}/chrome ${PREFIX}/bin/chrome
	${INSTALL_MAN} ${BUILDDIR}/chrome.1 ${PREFIX}/man/man1

.for p in chrome_100_percent content_resources keyboard_resources resources
	${INSTALL_DATA} ${BUILDDIR}/${p}.pak ${PREFIX}/chrome
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/chrome/locales
	${INSTALL_DATA} ${BUILDDIR}/locales/* ${PREFIX}/chrome/locales
	${INSTALL_DATA} ${BUILDDIR}/*.png ${PREFIX}/chrome
	${INSTALL_DATA_DIR} ${PREFIX}/chrome/resources
	@cp -Rp ${BUILDDIR}/resources/* ${PREFIX}/chrome/resources
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/chrome/resources
.for f in libexif.so libffmpegsumo.so libpdf.so protoc icudtl.dat mksnapshot
	if [ -f ${BUILDDIR}/${f} ]; then ${INSTALL_DATA} ${BUILDDIR}/${f} ${PREFIX}/chrome; fi
.endfor
.for s in 22 24 48 64 128 256
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${s}x${s}/apps
	${INSTALL_DATA} ${WRKSRC}/chrome/app/theme/chromium/product_logo_${s}.png \
		${PREFIX}/share/icons/hicolor/${s}x${s}/apps/chrome.png
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/chromium-browser.desktop \
		${PREFIX}/share/applications/chromium-browser.desktop

.include <bsd.port.arch.mk>

.if ${ARCH} == i386
PKG_ARGS= -DI386_DISABLE="@comment "
.else
PKG_ARGS= -DI386_DISABLE=""
.endif

.include <bsd.port.mk>
