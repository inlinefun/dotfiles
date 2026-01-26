import QtQuick
import Quickshell
import Quickshell.Wayland

import qs.common

PanelWindow {
    id: root
    anchors {
        top: true
        right: true
        bottom: true
    }
    margins {
        top: Constants.barHeight
    }
    exclusionMode: ExclusionMode.Ignore
    color: "transparent"
    visible: implicitWidth > 1
    implicitWidth: container.implicitWidth > 0 ? 250 : 1
    Rectangle {
        id: container
        anchors {
            top: parent.top
            right: parent.right
            bottom: parent.bottom
        }
        implicitWidth: Persistence.panelWidth
        color: Colors.surface
        Rectangle {
            anchors {
                top: parent.top
                left: parent.left
                bottom: parent.bottom
            }
            implicitWidth: Constants.border
            color: Colors.surface_bright
        }
    }
    Component.onCompleted: {
        if (this.WlrLayershell != null) {
            this.WlrLayershell.keyboardFocus = WlrKeyboardFocus.Exclusive;
        }
    }
}
