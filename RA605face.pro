TEMPLATE = app

QT += qml quick widgets

SOURCES += main.cpp \
    src/scriptlauncher.cpp

HEADERS += \
    src/scriptlauncher.h

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

ios: {
    LIBS += -L$$PROTOBUF_LIB_PATH
    LIBS += -L$$ZEROMQ_LIB_PATH
    LIBS += -L$$LIBSODIUM_LIB_PATH
    LIBS += -lsodium -lzmq -lprotobuf
}

android: {
    LIBS += -lmachinetalk-protobuf
}
