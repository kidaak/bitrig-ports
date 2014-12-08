# $OpenBSD: qt5.port.mk,v 1.1.1.1 2014/12/08 20:33:38 zhuk Exp $

# This fragment defines MODQT_* variables to make it easier to substitute
# qt4/qt5 in a port.
MODQT_OVERRIDE_UIC ?= Yes
MODQT5_OVERRIDE_UIC ?= ${MODQT_OVERRIDE_UIC}

MODQT5_LIBDIR =	${LOCALBASE}/lib/qt5
MODQT_LIBDIR ?= ${MODQT5_LIBDIR}
MODQT5_INCDIR =	${LOCALBASE}/include/X11/qt5
MODQT_INCDIR ?= ${MODQT5_INCDIR}
.if ${CONFIGURE_STYLE:Mcmake}
MODQT5_CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Qt4=Yes
.else
MODQT5_CONFIGURE_ARGS =	--with-qt-includes=${MODQT5_INCDIR} \
			--with-qt-libraries=${MODQT5_LIBDIR}
.endif
MODQT_CONFIGURE_ARGS ?= ${MODQT5_CONFIGURE_ARGS}
_MODQT5_SETUP =	MOC=${MODQT5_MOC} \
		MODQT_INCDIR=${MODQT5_INCDIR} \
		MODQT_LIBDIR=${MODQT5_LIBDIR}
.if ${MODQT5_OVERRIDE_UIC:L} == "yes"
_MODQT5_SETUP +=UIC=${MODQT5_UIC}
.endif

# may be needed to find plugins
MODQT5_MOC =	${LOCALBASE}/bin/moc-qt5
MODQT_MOC ?=	${MODQT5_MOC}
MODQT5_UIC =	${LOCALBASE}/bin/uic-qt5
MODQT_UIC ?=	${MODQT5_UIC}
MODQT5_QTDIR =	${LOCALBASE}/lib/qt5
MODQT_QTDIR ?=	${MODQT5_QTDIR}

MODQT5_LIB_DEPENDS = 	x11/qt5
MODQT_LIB_DEPENDS ?= 	${MODQT5_LIB_DEPENDS}
LIB_DEPENDS += 		${MODQT5_LIB_DEPENDS}

CONFIGURE_ENV +=${_MODQT5_SETUP}
MAKE_ENV +=	${_MODQT5_SETUP}
MAKE_FLAGS +=	${_MODQT5_SETUP}
