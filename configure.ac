AC_INIT([argv_printer], [0.0.1], [ole@northern.tech],
        [argv_printer], [http://northern.tech/])
AC_CANONICAL_TARGET

AM_PROG_AR
LT_INIT([disable-static])
AC_PREREQ([2.68])
AC_CONFIG_SRCDIR([src/argv_printer.c])
AC_CONFIG_HEADERS([custom_config.h])
AM_INIT_AUTOMAKE([1.11 -Wall -Werror foreign subdir-objects])
AC_CONFIG_FILES([Makefile])
AC_PROG_CC
AC_CONFIG_MACRO_DIR([m4])

STRIP_FLAGS=""

case "$target_os" in
   linux*|*bsd*|*gnu*)
        STRIP_FLAGS="-Wl,--gc-sections"
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
        STRIP_FLAGS="-Wl,-dead_strip"
        ;;
   *)
        AC_MSG_ERROR(Unknown system type $target_os)
        ;;
esac


AC_SUBST([STRIP_FLAGS])

AC_CONFIG_SUBDIRS([libutils])

AC_OUTPUT
