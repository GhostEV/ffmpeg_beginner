TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

unix{
    #FFmpeg部分
    INCLUDEPATH+=/usr/include
    LIBS += -L/usr/lib/x86_64-linux-gnu/ \
                   -lavcodec -lavdevice -lavfilter -lavformat -lavutil -lpostproc \
                   -lswresample -lswscale
}

SOURCES += \
        main.c
