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
	@for prog in ${PROGS} ; do \
		echo "installing $$prog" ; \
		install -D -m 755 "$$prog" ${DESTDIR}${PREFIX}/bin/"$$prog" ; \
		done
	@for man in ${MANS} ; do \
		echo "installing $$man" ; \
		install -D -m 644 "$$man" ${DESTDIR}${MANPREFIX}/man1/"$$man" ; \
		done

.PHONY: all install
