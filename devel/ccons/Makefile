# Created by: Danilo Egea Gondolfo <danilo@FreeBSD.org>
# $FreeBSD$

PORTNAME=	ccons
PORTVERSION=	r251
PORTREVISION=	3
CATEGORIES=	devel
MASTER_SITES=	GOOGLE_CODE

MAINTAINER=	danilo@FreeBSD.org
COMMENT=	Interactive Console for the C Programming Language

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

BROKEN=		Unfetchable (google code has gone away)
DEPRECATED=	Unfetchable for more than six months (google code has gone away)
EXPIRATION_DATE=	2017-04-30

BUILD_DEPENDS=	llvm-config33:devel/llvm33 \
		clang++33:lang/clang33
RUN_DEPENDS=	clang++33:lang/clang33
LIB_DEPENDS=	libncurses.so:devel/ncurses

ONLY_FOR_ARCHS=	i386 amd64
USES=		cmake libedit
CMAKE_ARGS+=	-DLLVM_CONFIG_EXECUTABLE=${LOCALBASE}/bin/llvm-config33
CXXFLAGS+=	-fno-rtti

SUB_FILES=	ccons.sh
PLIST_FILES=	bin/ccons man/man1/ccons.1.gz \
		bin/ccons-bin

WRKSRC=		${WRKDIR}/ccons

.include <bsd.port.pre.mk>

.if ${OSVERSION} >= 1000054
CXXFLAGS+=	-stdlib=libc++
.endif

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/ccons ${STAGEDIR}${PREFIX}/bin/ccons-bin
	@${INSTALL_SCRIPT} ${WRKDIR}/ccons.sh ${STAGEDIR}${PREFIX}/bin/ccons
	@${INSTALL_MAN} ${WRKSRC}/man/ccons.1 ${STAGEDIR}${MAN1PREFIX}/man/man1/ccons.1

.include <bsd.port.post.mk>
