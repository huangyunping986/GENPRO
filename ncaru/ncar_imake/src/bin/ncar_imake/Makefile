# Makefile generated by imake - do not edit!
# $XConsortium: imake.c,v 1.87 94/04/17 20:10:28 rws Exp $

# -----------------------------------------------------------------------
# Makefile generated from "Imake.tmpl" and <Imakefile>
# $Id: Makefile,v 1.1.1.1 1999/05/14 20:57:10 morreale Exp $
#

.SUFFIXES: .i

# $Id: Makefile,v 1.1.1.1 1999/05/14 20:57:10 morreale Exp $

# -----------------------------------------------------------------------
# site-specific configuration parameters that need to come before
# the platform-specific parameters - edit site.def to change

# site:  $Id: Makefile,v 1.1.1.1 1999/05/14 20:57:10 morreale Exp $

# -----------------------------------------------------------------------
# platform-specific configuration parameters - edit sun.cf to change

# platform:  $Id: Makefile,v 1.1.1.1 1999/05/14 20:57:10 morreale Exp $

# operating system:  SunOS 5 5 1
# OSMajorNumber:	 5
# OSMinorNumber:	 5
# OSTeenyNumber:	 1

# $Id: Makefile,v 1.1.1.1 1999/05/14 20:57:10 morreale Exp $

# OSMajorNumber:	 5
# OSMinorNumber:	 5
# OSTeenyNumber:	 1

# $Id: Makefile,v 1.1.1.1 1999/05/14 20:57:10 morreale Exp $

# -----------------------------------------------------------------------
# site-specific configuration parameters that go after
# the platform-specific parameters - edit site.def to change

# site:  $Id: Makefile,v 1.1.1.1 1999/05/14 20:57:10 morreale Exp $

# $Id: Makefile,v 1.1.1.1 1999/05/14 20:57:10 morreale Exp $
# -----------------------------------------------------------------------
# Imake rules for building libraries, programs, scripts, and data files

          PATHSEP = /
            SHELL = /bin/sh

              TOP = ../../..
      CURRENT_DIR = src/bin/ncar_imake

            IMAKE = $(IMAKESRC)/ncar_imake
           DEPEND = $(DEPENDSRC)/ncar_makedepend
        MKDIRHIER = $(SHELL) $(UTILSRC)/ncar_mkdirhier.sh
        CONFIGSRC = $(TOP)/cf
         IMAKESRC = $(BINSRC)/ncar_imake
        DEPENDSRC = $(BINSRC)/ncar_makedepend

          INCROOT = /fs/scd/home0/morreale/include
        LINKLIBDIR = /fs/scd/home0/morreale/lib
         SHLIBDIR = /fs/scd/home0/morreale/lib
       LINTLIBDIR = $(LINKLIBDIR)/lint
          MANPATH = /fs/scd/home0/morreale/man
    MANSOURCEPATH = $(MANPATH)/man
           MANDIR = $(MANSOURCEPATH)1
        LIBMANDIR = $(MANSOURCEPATH)3
       FILEMANDIR = $(MANSOURCEPATH)$(FILEMANSUFFIX)

               AR = /usr/ccs/bin/ar cq
  BOOTSTRAPCFLAGS = -DSVR4
               CC = /opt/SUNWspro/bin/cc
               AS = /usr/ccs/bin/as

.SUFFIXES: .C

              CXX = CC
    CXXDEBUGFLAGS = -O
CXXEXTRA_INCLUDES =
  CXXIDL_INCLUDES = -I$(TOP)/include
   CXXSTD_DEFINES = -Dsun -DSVR4
       CXXOPTIONS =
      CXXINCLUDES = $(INCLUDES) $(TOP_INCLUDES) $(CXXEXTRA_INCLUDES) $(CXXIDL_INCLUDES)
       CXXDEFINES = $(CXXINCLUDES) $(CXXSTD_DEFINES) $(THREADS_CXXDEFINES) $(PLATFORM_DEFINES) $(CXXEXTRA_DEFINES)
     CXXSITEFLAGS =
   CXXLDSITEFLAGS =
    CXXLOCALFLAGS =
  CXXLDLOCALFLAGS =
         CXXFLAGS = $(CXXDEBUGFLAGS) $(CXXLOCALFLAGS) $(CXXSITEFLAGS) \
			$(CXXOPTIONS) $(THREADS_CXXFLAGS) $(CXXDEFINES)

         COMPRESS = compress
              CPP = /usr/ccs/lib/cpp $(STD_CPP_DEFINES)
    PREPROCESSCMD = /opt/SUNWspro/bin/cc -E $(STD_CPP_DEFINES)
          INSTALL = $(SHELL) $(UTILSRC)/ncar_bsdinst
     INSTALLFLAGS = -c
               LD = /usr/ccs/bin/ld
              LEX = /usr/ccs/bin/lex
           LEXLIB = -ll
             YACC = /usr/ccs/bin/yacc
           CCYACC = /usr/ccs/bin/yacc
             LINT = lint
      LINTLIBFLAG = -o
         LINTOPTS = -bh
               LN = ln -s
             MAKE = /usr/ccs/bin/make
               MV = mv
               CP = cp

               RM = rm -f
        MANSUFFIX = 1x
     LIBMANSUFFIX = 3x
    FILEMANSUFFIX = 4
            TROFF = psroff
         MSMACROS = -ms
              TBL = tbl
              EQN = eqn

           PURIFY = purify
    PURIFYOPTIONS =

     STD_INCLUDES =
  STD_CPP_DEFINES = -Dsun -DSVR4
      STD_DEFINES = -Dsun -DSVR4
 EXTRA_LOAD_FLAGS =
  EXTRA_LDOPTIONS =
  EXTRA_LIBRARIES = -lsocket -lnsl
             TAGS = ctags
               M4 = m4

    SHAREDCODEDEF =
         SHLIBDEF =

     SHLIBLDFLAGS = -G -z text

         PICFLAGS = -Kpic

      CXXPICFLAGS = -K PIC

    PROTO_DEFINES =

     INSTPGMFLAGS =

     INSTBINFLAGS = -m 0755
     INSTUIDFLAGS = -m 4755
     INSTLIBFLAGS = -m 0644
     INSTINCFLAGS = -m 0644
     INSTMANFLAGS = -m 0644
     INSTDATFLAGS = -m 0644
    INSTKMEMFLAGS = -g sys -m 2755

      PROJECTROOT = /fs/scd/home0/morreale

     TOP_INCLUDES = -I$(BUILDINCROOT)

      CDEBUGFLAGS = -O
        CCOPTIONS = -Xc
    CCMDLINEFLAGS =
       CSITEFLAGS =
      LDSITEFLAGS =
      CLOCALFLAGS =
     LDLOCALFLAGS =

      ALLINCLUDES = $(INCLUDES) $(EXTRA_INCLUDES) $(TOP_INCLUDES) $(STD_INCLUDES)

 PLATFORM_DEFINES = -DArchSun -DOSMajorVersion=5 -DOSMinorVersion=5
       ALLDEFINES = $(ALLINCLUDES) $(STD_DEFINES) $(EXTRA_DEFINES) \
			$(PROTO_DEFINES) $(THREADS_DEFINES) \
			$(PLATFORM_DEFINES) $(DEFINES)

           CFLAGS = $(CCMDLINEFLAGS) $(CDEBUGFLAGS) $(CLOCALFLAGS) \
			$(CSITEFLAGS) $(CCOPTIONS) \
			$(THREADS_CFLAGS)  $(ALLDEFINES)
        LINTFLAGS = $(LINTOPTS) -DLINT $(ALLDEFINES) $(DEPEND_DEFINES)
         LDPRELIB = -L$(BUILDLIBDIR)
        LDPOSTLIB =
        LDOPTIONS = $(CDEBUGFLAGS) $(LDLOCALFLAGS) $(LDSITEFLAGS) \
			$(CCOPTIONS)  $(EXTRA_LDOPTIONS) \
			$(THREADS_LDFLAGS) $(LOCAL_LDFLAGS) $(LDPRELIB)
     CXXLDOPTIONS = $(CXXDEBUGFLAGS) $(CXXLDLOCALFLAGS) $(CXXLDSITEFLAGS) $(CXXOPTIONS) $(EXTRA_LDOPTIONS) $(THREADS_CXXLDFLAGS) $(LOCAL_LDFLAGS) $(LDPRELIB)

           LDLIBS = $(LDPOSTLIB) $(THREADS_LIBS) $(SYS_LIBRARIES) $(EXTRA_LIBRARIES)

       CCENVSETUP = LD_RUN_PATH=$(LINKLIBDIR)
           CCLINK = $(CCENVSETUP) $(CC)

      CXXENVSETUP = LD_RUN_PATH=$(LINKLIBDIR)
          CXXLINK = $(CXXENVSETUP) $(CXX)

     LDSTRIPFLAGS = -x
   LDCOMBINEFLAGS = -r
      DEPENDFLAGS =
    DEPEND_DEFINES =

        MACROFILE = sun.cf
           RM_CMD = $(RM)

IMAKE_DEFINES	=

IRULESRC        = $(CONFIGSRC)
IMAKE_CMD 	= $(IMAKE) \
		-I$(PRIVCONFIGDIR) -I$(PUBCONFIGDIR) \
		-DPubConfigDir=$(PUBCONFIGDIR) $(IMAKE_DEFINES)

# -----------------------------------------------------------------------
# X Window System Build Parameters and Rules
# $Id: Makefile,v 1.1.1.1 1999/05/14 20:57:10 morreale Exp $

CONFIGROOTDIR	= $(LIBDIR)/cf
PRIVCONFIGDIR	= $(TOP)/cf

#
# This is the path to the "public" ncar_imake config files. It will
# be set in "private" Makefiles when booted via ncar_imake.
#
PUBCONFIGDIR	= $(LIBDIR)/cf

BUILDROOT	= $(TOP)

# -----------------------------------------------------------------------
# X Window System make variables; these need to be coordinated with rules

PROJECTNAME	= ncar_imake

BINDIR 		= /fs/scd/home0/morreale/bin
LINKLIBDIR 	= /fs/scd/home0/morreale/lib
LIBDIR 		= $(LINKLIBDIR)/$(PROJECTNAME)
INCROOT		= /fs/scd/home0/morreale/include
INCDIR 		= $(INCROOT)/$(PROJECTNAME)

BUILDINCROOT 	= $(BUILDROOT)/include
BUILDINCDIR 	= $(BUILDINCROOT)/$(PROJECTNAME)
BUILDINCTOP 	= ../..
BUILDLIBDIR 	= $(BUILDROOT)/lib
BUILDLIBTOP 	= ..

LINKLIBSRC 	= $(TOP)/src/lib
BINSRC 		= $(TOP)/src/bin
UTILSRC		= $(TOP)/src/util

# $Id: Makefile,v 1.1.1.1 1999/05/14 20:57:10 morreale Exp $

# $Id: Makefile,v 1.1.1.1 1999/05/14 20:57:10 morreale Exp $

DEPLIBS = $(LOCAL_LIBRARIES)

        CONFIGDIR = $(LIBDIR)/cf

# -----------------------------------------------------------------------
# start of Imakefile

# $Id: Makefile,v 1.1.1.1 1999/05/14 20:57:10 morreale Exp $

DEPLIBS =

INCLUDES = -I$(BUILDINCDIR)
CPP_PROGRAM = /usr/ccs/lib/cpp
CPP_DEFINES = -DCPP_PROGRAM="\"$(CPP_PROGRAM)\""
DEFINES = $(SIGNAL_DEFINES) $(BOOTSTRAPCFLAGS) $(CPP_DEFINES)

ncar_imake.c::   ncar_imake.c.sed
	./version.csh ncar_imake.c.sed ncar_imake.c

 OBJS = ncar_imake.o
 SRCS = ncar_imake.c

 PROGRAM = ncar_imake

all:: ncar_imake

ncar_imake: $(OBJS) $(DEPLIBS)
	$(RM) $@
	$(CCLINK) -o $@ $(LDOPTIONS) $(OBJS) $(LOCAL_LIBRARIES) $(LDLIBS)  $(EXTRA_LOAD_FLAGS)

ncar_imake.pure: $(OBJS) $(DEPLIBS)
	$(RM) $@
	$(CCENVSETUP) $(PURIFY) $(PURIFYOPTIONS) $(CC) -o $@ $(LDOPTIONS) $(OBJS) $(LOCAL_LIBRARIES) $(LDLIBS)  $(EXTRA_LOAD_FLAGS)

clean clean.pure::
	$(RM) ncar_imake.pure

install:: ncar_imake
	@if [ -d $(DESTDIR)$(BINDIR) ]; then set +x; \
	else (set -x; $(MKDIRHIER) $(DESTDIR)$(BINDIR)); fi
	$(INSTALL) $(INSTALLFLAGS) $(INSTPGMFLAGS)  ncar_imake $(DESTDIR)$(BINDIR)/ncar_imake

install.man:: ncar_imake.man
	@if [ -d $(DESTDIR)$(MANDIR) ]; then set +x; \
	else (set -x; $(MKDIRHIER) $(DESTDIR)$(MANDIR)); fi
	$(INSTALL) $(INSTALLFLAGS) $(INSTMANFLAGS) ncar_imake.man $(DESTDIR)$(MANDIR)/ncar_imake.$(MANSUFFIX)

depend:: $(DEPEND)

$(DEPEND):
	@echo "checking $@ over in $(DEPENDSRC) first..."; \
	cd $(DEPENDSRC); $(MAKE); \
	echo "okay, continuing in $(CURRENT_DIR)"

depend::
	$(DEPEND) $(DEPENDFLAGS) -- $(ALLDEFINES) $(DEPEND_DEFINES) -- $(SRCS)

lint:
	$(LINT) $(LINTFLAGS) $(SRCS) $(LINTLIBS)
lint1:
	$(LINT) $(LINTFLAGS) $(FILE) $(LINTLIBS)

clean::
	$(RM) ncar_imake

clean::
	$(RM) ccimake
	$(RM) ncar_imake.c

# -----------------------------------------------------------------------
# common rules for all Makefiles - do not edit

.c.i:
	$(RM) $@
	$(CC) -E $(CFLAGS) $(_NOOP_) $*.c > $@

.C.o:
	$(RM) $@
	$(CXX) -c $(CXXFLAGS) $(_NOOP_) $*.C

emptyrule::

clean::
	$(RM_CMD) *.CKP *.ln *.BAK *.bak *.o core errs ,* *~ *.a .emacs_* tags TAGS make.log MakeOut PureFilesToClean  "#"*

Makefile:: ncar_imake

Makefile::
	-@if [ -f Makefile ]; then set -x; \
	$(RM) Makefile.bak; $(MV) Makefile Makefile.bak; \
	else exit 0; fi
	$(IMAKE_CMD) -DTOPDIR=$(TOP) -DCURDIR=$(CURRENT_DIR)

tags::
	$(TAGS) -w *.[ch]
	$(TAGS) -xw *.[ch] > TAGS

# -----------------------------------------------------------------------
# empty rules for directories that do not have SUBDIRS - do not edit

install::
	@echo "install in $(CURRENT_DIR) done"

install.man::
	@echo "install.man in $(CURRENT_DIR) done"

Makefiles::

includes::

depend::

# -----------------------------------------------------------------------
# dependencies generated by ncar_makedepend

# DO NOT DELETE
