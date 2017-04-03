#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT(xv, 3.10a)
AC_CONFIG_SRCDIR(xv.c)
AM_INIT_AUTOMAKE



#AC_CONFIG_HEADERS([config.h])

# Checks for programs.
AC_PROG_CC

# Checks for libraries.

# Checks for header files.
AC_PATH_X
AC_FUNC_ALLOCA
AC_CHECK_HEADERS([fcntl.h limits.h malloc.h memory.h stddef.h stdlib.h sys/param.h sys/time.h unistd.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_TYPE_MODE_T
AC_TYPE_OFF_T
AC_TYPE_SIZE_T
AC_CHECK_MEMBERS([struct stat.st_rdev])

# Checks for library functions.
AC_FUNC_MALLOC
AC_FUNC_REALLOC
AC_FUNC_FORK
AC_CHECK_FUNCS([dup2 endpwent floor getcwd memset mkdir pow rint rmdir select setlocale sqrt strcasecmp strchr strdup strrchr strspn strstr strtol])

AC_CONFIG_SUBDIRS([junk])
AC_OUTPUT(Makefile)
