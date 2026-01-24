import QtQuick
import QtQuick.Layouts
import Quickshell.Bluetooth

import qs.animations
import qs.common
import qs.common.components
import qs.icons
import qs.osd
import qs.services

OSDItem {
    RowLayout {
        anchors {
            fill: parent
        }
        Item {
            id: container

            readonly property int iconSize: 28
            property color color: BluetoothService.enabled ? BluetoothService.connected ? Colors.primary : Colors.on_surface : Colors.error

            Layout.fillHeight: true
            implicitWidth: height
            BluetoothIcon {
                id: icon
                anchors {
                    centerIn: parent
                }
                color: container.color
                size: container.iconSize
            }
            BluetoothConnectedOverlay {
                id: overlay
                anchors {
                    centerIn: parent
                }
                color: container.color
                size: container.iconSize
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
                implicitHeight: BluetoothService.enabled ? 0 : container.iconSize
                color: container.color
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
        StyledText {
            text: BluetoothService.connected ? "Connected" : BluetoothAdapterState.toString(BluetoothService.state)
            color: Colors.on_surface
        }
    }
}
