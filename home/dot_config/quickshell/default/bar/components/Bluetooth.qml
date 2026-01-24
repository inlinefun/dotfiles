import QtQuick
import QtQuick.Layouts

import qs.animations
import qs.common
import qs.icons
import qs.services

MouseArea {
    id: root
    property color color: BluetoothService.enabled ? BluetoothService.connected ? Colors.primary : Colors.on_surface : Colors.error
    hoverEnabled: true
    Layout.fillHeight: true
    implicitWidth: height
    acceptedButtons: Qt.LeftButton
    onClicked: event => {
        if (event.button == Qt.LeftButton) {
            BluetoothService.toggle();
        }
    }

    BluetoothIcon {
        anchors {
            centerIn: parent
        }
        color: root.color
    }
    BluetoothConnectedOverlay {
        anchors {
            centerIn: parent
        }
        color: root.color
        opacity: BluetoothService.connected ? 1 : 0
        Behavior on opacity {
            AnimateNumber {}
        }
    }
    Rectangle {
        anchors {
            centerIn: parent
        }
        implicitWidth: 2
        implicitHeight: BluetoothService.enabled ? 0 : 24
        color: root.color
        opacity: BluetoothService.enabled ? 0 : 1
        rotation: -45
        Behavior on implicitHeight {
            AnimateNumber {}
        }
        Behavior on opacity {
            AnimateNumber {}
        }
    }
    Behavior on color {
        AnimateColor {}
    }
}
