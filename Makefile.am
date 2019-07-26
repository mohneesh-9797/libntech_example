ACLOCAL_AMFLAGS = -I m4 --install
EXTRA_DIST = m4/NOTES

bin_PROGRAMS = \
	argv_printer \
	argv_printer_seq

argv_printer_SOURCES = \
	src/argv_lib.h src/argv_lib.c \
	src/argv_printer.c

argv_printer_seq_SOURCES = \
	src/argv_lib.h src/argv_lib.c \
	src/argv_printer_seq.c

argv_printer_seq_LDADD = libutils/libutils/.libs/libutils.la
argv_printer_seq_CPPFLAGS = -I libutils/libutils/ -I libutils/libcompat/
