import QtQuick
import QtQuick.Layouts

import qs.animations
import qs.common
import qs.services

Item {
    implicitWidth: Constants.barHeight
    implicitHeight: Constants.barHeight
    RowLayout {
        id: layout

        property color battery: {
            if (BatteryService.charging) {
                return Colors.primary;
            }
            if (BatteryService.full) {
                return Colors.primary_fixed;
            }
            if (BatteryService.charge <= 20) {
                return Colors.error;
            }
            return Colors.on_surface;
        }

        anchors {
            centerIn: parent
        }
        implicitHeight: Constants.barHeight
        implicitWidth: Constants.barHeight
        spacing: 1
        Rectangle {
            id: batteryContainer
            implicitHeight: 18
            implicitWidth: 26
            radius: 4
            color: layout.battery
            Layout.alignment: Qt.AlignVCenter
            Text {
                text: BatteryService.charge
                anchors {
                    centerIn: batteryContainer
                }
                font {
                    bold: true
                    pixelSize: 12
                    family: Constants.fontFamily
                }
            }
        }
        Rectangle {
            implicitHeight: 10
            implicitWidth: 2
            topRightRadius: 1
            bottomRightRadius: 1
            color: layout.battery
            Layout.alignment: Qt.AlignVCenter
        }
        Behavior on battery {
            AnimateColor {}
        }
    }
}
