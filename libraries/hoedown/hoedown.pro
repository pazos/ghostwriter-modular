message("Building Hoedown static library")

QT -= core gui

TEMPLATE = lib
CONFIG += staticlib

QMAKE_CFLAGS += -g -O3 -ansi -pedantic -w

HEADERS += \
    hoedown/src/autolink.h \
    hoedown/src/buffer.h \
    hoedown/src/document.h \
    hoedown/src/escape.h \
    hoedown/src/html.h \
    hoedown/src/stack.h \
    hoedown/src/version.h

SOURCES += \
    hoedown/src/autolink.c \
    hoedown/src/buffer.c \
    hoedown/src/document.c \
    hoedown/src/escape.c \
    hoedown/src/html.c \
    hoedown/src/html_blocks.c \
    hoedown/src/html_smartypants.c \
    hoedown/src/stack.c \
    hoedown/src/version.c

