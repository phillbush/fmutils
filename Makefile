include config.mk

all:
	@echo no need to build

install:
	install -D -m 755 bulkrename ${DESTDIR}${PREFIX}/bin/bulkrename
	install -D -m 755 pick ${DESTDIR}${PREFIX}/bin/pick
	install -D -m 755 preview ${DESTDIR}${PREFIX}/bin/preview
	install -D -m 755 skel ${DESTDIR}${PREFIX}/bin/skel
	install -D -m 755 trash ${DESTDIR}${PREFIX}/bin/trash
	install -D -m 755 untrash ${DESTDIR}${PREFIX}/bin/untrash
	install -D -m 755 unpack ${DESTDIR}${PREFIX}/bin/unpack
	install -D -m 644 bulkrename.1 ${DESTDIR}${MANPREFIX}/man1/bulkrename.1
	install -D -m 644 pick.1 ${DESTDIR}${MANPREFIX}/man1/pick.1
	install -D -m 644 preview.1 ${DESTDIR}${MANPREFIX}/man1/preview.1
	install -D -m 644 skel.1 ${DESTDIR}${MANPREFIX}/man1/skel.1
	install -D -m 644 trash.1 ${DESTDIR}${MANPREFIX}/man1/trash.1
	install -D -m 644 untrash.1 ${DESTDIR}${MANPREFIX}/man1/untrash.1
	install -D -m 644 unpack.1 ${DESTDIR}${MANPREFIX}/man1/unpack.1

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/bulkrename
	rm -f ${DESTDIR}${PREFIX}/bin/pick
	rm -f ${DESTDIR}${PREFIX}/bin/preview
	rm -f ${DESTDIR}${PREFIX}/bin/skel
	rm -f ${DESTDIR}${PREFIX}/bin/trash
	rm -f ${DESTDIR}${PREFIX}/bin/untrash
	rm -f ${DESTDIR}${PREFIX}/bin/unpack
	rm -f ${DESTDIR}${MANPREFIX}/man1/bulkrename.1
	rm -f ${DESTDIR}${MANPREFIX}/man1/pick.1
	rm -f ${DESTDIR}${MANPREFIX}/man1/preview.1
	rm -f ${DESTDIR}${MANPREFIX}/man1/skel.1
	rm -f ${DESTDIR}${MANPREFIX}/man1/trash.1
	rm -f ${DESTDIR}${MANPREFIX}/man1/untrash.1
	rm -f ${DESTDIR}${MANPREFIX}/man1/unpack.1

.PHONY: all install uninstall
