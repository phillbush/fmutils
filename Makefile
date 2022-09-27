PREFIX ?= /usr/local
MANPREFIX ?= ${PREFIX}/share/man

PROGS = bulkrename \
	pick       \
	preview    \
	skel       \
	trash      \
	untrash    \
	unpack     \
	unpreview

MANS = bulkrename.1 \
	pick.1       \
	preview.1    \
	skel.1       \
	trash.1      \
	unpack.1

all:
	@echo no need to build

install:
	install -D -m 755 ${PROGS} ${DESTDIR}${PREFIX}/bin/
	install -D -m 644 ${MANS} ${DESTDIR}${MANPREFIX}/man1/

.PHONY: all install
