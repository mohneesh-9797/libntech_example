# This Makefile provides 2 example targets, they both print argv, but
# one uses a libutils data structure to do it. Both binaries are
# built using size-optimizing flags and options for stripping dead code.
# On my system the binaries are 9KB (without libutils) and 11KB (with libutils).

# In my testing, trying to include individual files from libutils
# is actually worse than linking to libutils.la and letting the compiler/linker
# optimize for size and strip dead code.


SUBDIRS = libutils

ACLOCAL_AMFLAGS = -I m4 --install
EXTRA_DIST = m4/NOTES

bin_PROGRAMS = \
	argv_printer_zero \
	argv_printer_libs # Equal length file name for fair comparison

argv_printer_zero_SOURCES = \
	src/argv_lib.c \
	src/argv_printer.c

argv_printer_zero_CFLAGS = -Os -fdata-sections -ffunction-sections
argv_printer_zero_LDFLAGS = $(STRIP_LDFLAGS)

argv_printer_libs_SOURCES = \
	src/argv_lib.c \
	src/argv_printer_seq.c

argv_printer_libs_LDADD = libutils/libutils/.libs/libutils.la
argv_printer_libs_CPPFLAGS = -I libutils/libutils/ -I libutils/libcompat/
argv_printer_libs_CFLAGS = -Os -fdata-sections -ffunction-sections
argv_printer_libs_LDFLAGS = $(STRIP_LDFLAGS)
