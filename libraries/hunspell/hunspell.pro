message("Building Hunspell static library")

QT -= core gui

TEMPLATE = lib
CONFIG += staticlib

CONFIG += warn_off

QMAKE_CFLAGS += -g -O3 -fPIC

HEADERS += \
    hunspell/src/hunspell/affentry.hxx \
    hunspell/src/hunspell/affixmgr.hxx \
    hunspell/src/hunspell/atypes.hxx \
    hunspell/src/hunspell/baseaffix.hxx \
    hunspell/src/hunspell/csutil.hxx \
    hunspell/src/hunspell/filemgr.hxx \
    hunspell/src/hunspell/hashmgr.hxx \
    hunspell/src/hunspell/htypes.hxx \
    hunspell/src/hunspell/hunspell.hxx \
    hunspell/src/hunspell/hunvisapi.h \
    hunspell/src/hunspell/hunvisapi.h.in \
    hunspell/src/hunspell/hunzip.hxx \
    hunspell/src/hunspell/langnum.hxx \
    hunspell/src/hunspell/phonet.hxx \
    hunspell/src/hunspell/replist.hxx \
    hunspell/src/hunspell/suggestmgr.hxx \
    hunspell/src/hunspell/utf_info.hxx \
    hunspell/src/hunspell/w_char.hxx

SOURCES += \
    hunspell/src/hunspell/affentry.cxx \
    hunspell/src/hunspell/affixmgr.cxx \
    hunspell/src/hunspell/csutil.cxx \
    hunspell/src/hunspell/filemgr.cxx \
    hunspell/src/hunspell/hashmgr.cxx \
    hunspell/src/hunspell/hunspell.cxx \
    hunspell/src/hunspell/hunzip.cxx \
    hunspell/src/hunspell/phonet.cxx \
    hunspell/src/hunspell/replist.cxx \
    hunspell/src/hunspell/suggestmgr.cxx


