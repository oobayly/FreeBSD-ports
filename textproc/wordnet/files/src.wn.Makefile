PROG=		wn
NO_MAN=		True	# man pages installed separately
NOMAN=		${NO_MAN}

CFLAGS+=	-DUNIX -DDEFAULTPATH="\"${PREFIX}/share/WordNet\"" \
		-DDEFAULTBIN="\"${PREFIX}/bin\""

CFLAGS+=	-I${.CURDIR:H}/include
LDADD+=		-L../lib -lWN

BINDIR=		${PREFIX}/bin

.include <bsd.prog.mk>
