# Created by: ijliao
# $FreeBSD$

PORTNAME=	libqrencode
PORTVERSION=	3.9.0
PORTREVISION=	1
CATEGORIES=	graphics
DISTNAME=	qrencode-${PORTVERSION}

MAINTAINER=	vanilla@FreeBSD.org
COMMENT=	C library for encoding data in a QR Code symbol

LICENSE=	LGPL21
LICENSE_FILE=	${WRKSRC}/COPYING

LIB_DEPENDS=	libpng.so:graphics/png

USE_GITHUB=	yes
GH_ACCOUNT=	fukuchi
GH_TAGNAME=	e3410bf

USES=		cmake iconv pathfix pkgconfig
USE_LDCONFIG=	yes
GNU_CONFIGURE=	yes

CMAKE_ARGS=	-DBUILD_SHARED_LIBS=ON
PLIST_FILES=	bin/qrencode \
		include/qrencode.h \
		lib/libqrencode.so \
		lib/libqrencode.so.3 \
		lib/libqrencode.so.3.9.0 \
		libdata/pkgconfig/libqrencode.pc \
		man/man1/qrencode.1.gz

post-patch:
	@${SED} -i -e 's|share\/man\/man1|man\/man1|' \
		${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
