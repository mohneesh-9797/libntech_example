# package name, version, bug report email, tarball name, project home page:
AC_INIT([argv_printer], [0.0.1], [ole@northern.tech],
        [argv_printer], [https://northern.tech/])

# Required autoconf version:
AC_PREREQ([2.68])

# Defines variables like target_os:
AC_CANONICAL_TARGET

# Initialize libtool:
AM_PROG_AR # libtool needs archiver program
LT_INIT

# Check that sources are available:
AC_CONFIG_SRCDIR([src/argv_printer.c])
AC_CONFIG_SRCDIR([libutils/libutils/sequence.c])
# If sequence.c is not there, it probably means git submodule is missing

# We generate custom_config.h instead of default (config.h),
# this is to avoid collision with libutils/config.h:
AC_CONFIG_HEADERS([custom_config.h])

# Initialize automake with a string of options (explained below):
AM_INIT_AUTOMAKE([1.11 -Wall -Werror foreign subdir-objects])
# 1.11: the required automake version
# -Wall -Werror: enables all warnings in automake(not gcc) and makes them errors
# foreign: tell automake that this project does not follow GNU Standards
# subdir-objects: .o files are placed in subdirectories (along sources)

# AC_OUTPUT (configure) will generate Makefile from Makefile.in
# performing substitutions according to AC_SUBST macros:
AC_CONFIG_FILES([Makefile])

# Declare that we need a C compiler:
AC_PROG_CC

# Use the m4 directory for m4 macros (convention):
AC_CONFIG_MACRO_DIR([m4])

# Platform specific linker flags for stripping dead code:
STRIP_LDFLAGS=""

case "$target_os" in
   linux*|*bsd*|*gnu*)
        STRIP_LDFLAGS="-Wl,--gc-sections"
        ;;
   freebsd*|dragonfly*)
        ;;
   openbsd*|obsd*)
        ;;
   cygwin*)
        ;;
   mingw*)
        ;;
   darwin*)
        STRIP_LDFLAGS="-Wl,-dead_strip"
        ;;
   *)
        AC_MSG_ERROR(Unknown system type $target_os)
        ;;
esac

AC_SUBST([STRIP_LDFLAGS]) # Substitutes the variable in Makefile.am

# Run autoconf/configure in libutils, generating necessary makefiles:
AC_CONFIG_SUBDIRS([libutils])

AC_OUTPUT
