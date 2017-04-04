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

######################
# Library dependencies
######################
LIBPNG_REQUIRED=1.2
LIBTIFF_REQUIRED=3.5
LIBJPEG_REQUIRED=0.1
#LIBZ_REQUIRED=1.0
#LIBX11_REQUIRED


######################
# Checks for libraries
######################

# libjpeg support
AC_ARG_ENABLE([jpeg],
  AC_HELP_STRING([--disable-jpeg], [disable direct jpeg support]),
    [libjpeg=$enableval], [libjpeg=auto])
if test "x${libjpeg}" != "xno"; then
  AC_CHECK_LIB(jpeg, jpeg_destroy_decompress,
      HAVE_JPEG=yes
      JPEG_LIBS=-ljpeg
      AC_DEFINE(HAVE_JPEG, 1, [define to enable use of custom jpeg loader]),
      HAVE_JPEG=no)
else
  HAVE_JPEG=disabled
fi
AM_CONDITIONAL(HAVE_JPEG, [test "x$HAVE_JPEG" = xyes])
AC_SUBST(JPEG_CFLAGS)
AC_SUBST(JPEG_LIBS)

# libjasper support
AC_ARG_ENABLE([jasper],
  AC_HELP_STRING([--disable-jasper], [disable jasper jpeg2000 support]),
    [libjasper=$enableval], [libjasper=auto])
if test "x${libjasper}" != "xno"; then
  AC_CHECK_LIB(jasper, jas_cmxform_create,
      HAVE_JASPER=yes
      PNG_LIBS=-ljasper
      AC_DEFINE(HAVE_JASPER, 1, [define to enable use of jasper jpeg2000]),
      HAVE_JASPER=no)
else
  HAVE_JASPER=disabled
fi
AM_CONDITIONAL(HAVE_JASPER, [test "x$HAVE_JASPER" = xyes])
AC_SUBST(JASPER_CFLAGS)
AC_SUBST(JASPER_LIBS)

# libtiff support
AC_ARG_ENABLE([tiff],
  AC_HELP_STRING([--disable-tiff], [disable direct tiff support]),
    [libtiff=$enableval], [libtiff=auto])
if test "x${libtiff}" != "xno"; then
  AC_CHECK_LIB(tiff, TIFFClientOpen,
      HAVE_TIFF=yes
      TIFF_LIBS=-ltiff
      AC_DEFINE(HAVE_TIFF, 1, [define to enable use of custom tiff loader]),
      HAVE_TIFF=no)
else
  HAVE_TIFF=disabled
fi
AM_CONDITIONAL(HAVE_TIFF, [test "x$HAVE_TIFF" = xyes])
AC_SUBST(TIFF_CFLAGS)
AC_SUBST(TIFF_LIBS)





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


#########################################
# Warn about missing "optional" libraries
#########################################
if test x$HAVE_JPEG = xno ; then
	AC_MSG_WARN(libjpeg is missing!)
fi

if test x$HAVE_JASPER = xno ; then
	AC_MSG_WARN(libjasper is missing!)
fi

if test x$HAVE_PNG = xno ; then
	AC_MSG_WARN(libpng is missing!)
fi

if test x$HAVE_TIFF = xno ; then
	AC_MSG_WARN(libtiff is missing!)
fi

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
