message("Building Sundown static library")

QT -= core gui

TEMPLATE = lib
CONFIG += staticlib

QMAKE_CFLAGS += -g -O3 -fPIC -w

INCLUDEPATH += sundown/html sundown/src

HEADERS += \
    sundown/src/autolink.h \
    sundown/src/buffer.h \
    sundown/src/html_blocks.h \
    sundown/src/markdown.h \
    sundown/src/stack.h \
    sundown/html/houdini.h \
    sundown/html/html.h


SOURCES += \
    sundown/src/autolink.c \
    sundown/src/buffer.c \
    sundown/src/markdown.c \
    sundown/src/stack.c \
    sundown/html/houdini_href_e.c \
    sundown/html/houdini_html_e.c \
    sundown/html/html.c \
    sundown/html/html_smartypants.c



