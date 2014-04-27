# The name of your app.
# NOTICE: name defined in TARGET has a corresponding QML filename.
#         If name defined in TARGET is changed, following needs to be
#         done to match new name:
#         - corresponding QML filename must be changed
#         - desktop icon filename must be changed
#         - desktop filename must be changed
#         - icon definition filename in desktop file must be changed
TARGET = harbour-ropedices

CONFIG += sailfishapp

SOURCES += \
    src/harbour-ropedices.cpp

OTHER_FILES += \
    qml/cover/CoverPage.qml \
    qml/pages/MainPage.qml \
    qml/pages/InfoPage.qml \
    qml/harbour-ropedices.qml \
    harbour-ropedices.desktop \
    rpm/harbour-ropedices.spec \
    rpm/harbour-ropedices.yaml

