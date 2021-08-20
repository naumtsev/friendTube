QT       += core
QT       += network
QT       -= gui
QT       += websockets
TARGET = MultiThreadedQTcpServer
CONFIG   += console
CONFIG   -= app_bundle

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH += $$PWD/include


HEADERS += \
    include/ChatManager.h \
    include/ForbiddenZone.h \
    include/JsonHandler.h \
    include/Message.h \
    include/MovementCheck.h \
    include/PlayerSocket.h \
    include/Server.h \
    include/Video.h \
    include/VideoManager.h


VPATH += $$PWD/src

SOURCES += \
        JsonHandler.cpp \
        PlayerSocket.cpp \
        Server.cpp \
        Video.cpp \
        VideoManager.cpp \
        main.cpp \
        ChatManager.cpp \
        Message.cpp \
        MovementCheck.cpp \
        ForbiddenZone.cpp


QMAKE_CXXFLAGS += -O2

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    check.qrc

