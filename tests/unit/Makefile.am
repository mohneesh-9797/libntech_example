AUTOMAKE_OPTIONS = subdir-objects

AM_CPPFLAGS = -I$(top_srcdir)/argv_printer

check_LTLIBRARIES = libcmocka.la
libcmocka_la_SOURCES = cmocka/src/cmocka.c
libcmocka_la_CPPFLAGS = -Icmocka/include

TESTS = \
	test_argv_lib

check_PROGRAMS = \
	$(TESTS)

test_argv_lib_SOURCES = test_argv_lib.c $(top_srcdir)/argv_printer/argv_lib.c
test_argv_lib_LDADD = libcmocka.la $(top_srcdir)/libntech/libutils/libutils.la
