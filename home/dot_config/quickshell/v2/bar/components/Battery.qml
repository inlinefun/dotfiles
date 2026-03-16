import QtQuick
import QtQuick.Layouts

import qs.animations
import qs.common

BarItem {
    id: root
    RowLayout {
        id: layout
        anchors {
            centerIn: parent
        }
        spacing: 1
        property color battery: {
            return Colors.on_surface;
        }
        Rectangle {
            id: batteryContainer
            implicitHeight: 18
            implicitWidth: 26
            radius: 4
            color: layout.battery
            Layout.alignment: Qt.AlignVCenter
            Text {
                text: "100"
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
