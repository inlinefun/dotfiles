import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Wayland

import qs.animations
import qs.common
import qs.services

PanelWindow {
    id: root
    anchors {
        top: true
        left: true
        right: true
        bottom: true
    }
    margins {
        top: Constants.barHeight
    }
    exclusionMode: ExclusionMode.Ignore
    color: "transparent"
    visible: implicitWidth > 1
    implicitWidth: container.implicitWidth > 0 ? Constants.panelWidth : 1
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
            opacity: Persistence.isPanelOpen ? 1 : 0
            Behavior on opacity {
                AnimateNumber {}
            }
        }
        Rectangle {
            id: wrapper
            anchors {
                fill: parent
                margins: Constants.margins
            }
            color: "transparent"
            ColumnLayout {
                anchors {
                    top: parent.top
                    left: parent.left
                    right: parent.right
                }
                spacing: Constants.margins
                Repeater {
                    id: repeater
                    model: NotificationService.notifications
                    NotificationItem {}
                }
            }
        }
    }
    MouseArea {
        anchors {
            fill: parent
        }
        acceptedButtons: Qt.AllButtons
        onClicked: {
            Persistence.togglePanel();
        }
    }
    Component.onCompleted: {
        if (this.WlrLayershell != null) {
            this.WlrLayershell.keyboardFocus = WlrKeyboardFocus.Exclusive;
        }
    }
}
