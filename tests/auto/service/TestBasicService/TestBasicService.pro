TEMPLATE = lib
CONFIG += static

QT = core service testlib

CONFIG   += console
CONFIG   -= app_bundle

DEFINES += SRCDIR=\\\"$$_PRO_FILE_PWD_/\\\"

TARGET = basicservice

SOURCES += \
	basicservicetest.cpp

mac: QMAKE_LFLAGS += '-Wl,-rpath,\'$$OUT_PWD/../../../../lib\''

HEADERS += \
	basicservicetest.h
