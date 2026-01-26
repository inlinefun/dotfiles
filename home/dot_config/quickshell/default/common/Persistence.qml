pragma Singleton

import QtQuick
import Quickshell

import qs.animations
import qs.common

Singleton {
    id: root
    readonly property bool isPanelOpen: persistence.panelOpened
    readonly property int panelWidth: object.panelWidth
    function togglePanel() {
        persistence.panelOpened = !persistence.panelOpened;
    }
    PersistentProperties {
        id: persistence
        property bool panelOpened: false
    }
    QtObject {
        id: object
        property int panelWidth: root.isPanelOpen ? Constants.panelWidth : 0
        Behavior on panelWidth {
            AnimateNumber {}
        }
    }
}
