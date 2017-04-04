#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT(xv, 3.10a, https://github.com/DavidGriffith/xv)

AC_CONFIG_SRCDIR(xv.c)
AM_INIT_AUTOMAKE

AC_CONFIG_HEADERS([config.h])

# Checks for programs.
AC_PROG_CC

#AC_LANG_SOURCE([C])
#AC_LANG_CONFTEST([C])


# Checks for libraries.
#AC_CHECK_LIB(ncurses)

# Checks for header files.
AC_PATH_X
AC_FUNC_ALLOCA
#AC_CHECK_HEADERS([fcntl.h limits.h malloc.h memory.h stddef.h stdlib.h sys/param.h sys/time.h unistd.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_TYPE_MODE_T
AC_TYPE_OFF_T
AC_TYPE_SIZE_T
AC_CHECK_MEMBERS([struct stat.st_rdev])

# Checks for library functions.
AC_FUNC_MALLOC
AC_FUNC_REALLOC
AC_FUNC_FORK
#AC_CHECK_FUNCS([dup2 endpwent floor getcwd memset mkdir pow rint rmdir select setlocale sqrt strcasecmp strchr strdup strrchr strspn strstr strtol])

#AC_CONFIG_SUBDIRS([junk])

if test x$prefix = xNONE ; then
  prefix=${ac_default_prefix}
fi

AC_DEFINE_UNQUOTED([DOCDIR], ["${prefix}/share/doc/xv"], [Documentation])


#AC_OUTPUT(Makefile)
AC_CONFIG_FILES([Makefile])
AC_OUTPUT
