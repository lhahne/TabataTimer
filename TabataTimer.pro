# The name of your app.
# NOTICE: name defined in TARGET has a corresponding QML filename.
#         If name defined in TARGET is changed, following needs to be
#         done to match new name:
#         - corresponding QML filename must be changed
#         - desktop icon filename must be changed
#         - desktop filename must be changed
#         - icon definition filename in desktop file must be changed
TARGET = harbour-tabatatimer

CONFIG += sailfishapp

SOURCES += src/TabataTimer.cpp

OTHER_FILES += \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    rpm/TabataTimer.spec \
    qml/pages/TabataTimerPage.qml \
    qml/pages/Timer.js \
    qml/harbour-tabatatimer.qml \
    harbour-tabatatimer.desktop \
    rpm/harbour-tabatatimer.yaml

