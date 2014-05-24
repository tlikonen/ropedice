# The name of your app.
# NOTICE: name defined in TARGET has a corresponding QML filename.
#         If name defined in TARGET is changed, following needs to be
#         done to match new name:
#         - corresponding QML filename must be changed
#         - desktop icon filename must be changed
#         - desktop filename must be changed
#         - icon definition filename in desktop file must be changed
TARGET = Ropedice

CONFIG += sailfishapp

SOURCES += src/Ropedice.cpp

OTHER_FILES += qml/Ropedice.qml \
    qml/cover/CoverPage.qml \
    rpm/Ropedice.spec \
    rpm/Ropedice.yaml \
    Ropedice.desktop \
    qml/pages/MainPage.qml \
    qml/pages/InfoPage.qml \
    README.md

