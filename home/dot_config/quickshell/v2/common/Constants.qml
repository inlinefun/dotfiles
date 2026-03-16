pragma Singleton

import Quickshell
import QtQuick

Singleton {
    id: root
    readonly property int screenBorder: 5
    readonly property int radius: 10
    readonly property int barHeight: 40
    readonly property int transitionDuration: 200
    readonly property int transitionEasing: Easing.OutSine
    readonly property string fontFamily: "Google Sans"
}
