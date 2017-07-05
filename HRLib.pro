QT += core
QT -= gui

CONFIG += c++14

TARGET = HRLib
CONFIG += console
CONFIG -= app_bundle
QMAKE_CXXFLAGS_RELEASE += -lmkl_intel -fopenmp -march=corei7-avx -O2
QMAKE_CFLAGS_ISYSTEM = ""

TEMPLATE = app

INCLUDEPATH +=  /usr/local/include \
                /usr/include \
                /opt/intel/mkl/include \
                /usr/include/python3.5m

LIBS += -lopencv_core \
        -lopencv_highgui \
        -lopencv_videoio \
        -lopencv_imgproc \
        -ldlib \
        -larmadillo \
        -lpython3.5m \
        -lmkl_intel_lp64

SOURCES += main.cpp \
    signalextractor.cpp \
    nlms.cpp \
    nrme.cpp \
    fftwrapper.cpp \
    bpfilter.cpp \
    movingavgfilter.cpp

HEADERS += \
    signalextractor.h \
    nlms.h \
    nrme.h \
    fftwrapper.h \
    bpfilter.h \
    movingavgfilter.h
