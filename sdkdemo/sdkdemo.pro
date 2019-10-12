#-------------------------------------------------
#
# Project created by QtCreator 2017-10-22T11:12:39
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET      = sdkdemo
TEMPLATE    = app
SOURCES     += main.cpp
SOURCES     += widget.cpp
HEADERS     += widget.h
FORMS       += widget.ui

INCLUDEPATH += $$PWD/sdk

CONFIG(debug, debug|release){
LIBS += -L$$PWD/sdk/ -lqucd
} else {
LIBS += -L$$PWD/sdk/ -lquc
}
