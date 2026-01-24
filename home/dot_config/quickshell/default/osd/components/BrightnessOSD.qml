import QtQuick
import QtQuick.Layouts

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
            property color color: BrightnessService.brightness <= 20 ? Colors.error : BrightnessService.brightness == 100 ? Colors.primary : Colors.on_surface

            Layout.fillHeight: true
            implicitWidth: height
            BrightnessLayerIcon {
                id: icon
                anchors {
                    centerIn: parent
                }
                color: container.color
                size: container.iconSize
            }
            Item {
                width: container.iconSize
                height: container.iconSize
                anchors.centerIn: parent
                transformOrigin: Item.Center
                rotation: 45 * BrightnessService.brightness / 100
                scale: 0.8 + (0.4 * (BrightnessService.brightness / 100))
                BrightnessOverlay {
                    anchors.fill: parent
                    opacity: Math.max(0.5, BrightnessService.brightness / 50)
                    color: container.color
                    size: container.iconSize
                }
                Behavior on rotation {
                    NumberAnimation {}
                }
            }

            Behavior on color {
                AnimateColor {}
            }
        }
        ColumnLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            RowLayout {
                id: textLayout

                readonly property int fontSize: 16
                Layout.topMargin: 8
                Layout.rightMargin: 12

                StyledText {
                    text: "Brightness"
                    color: Colors.on_surface
                    size: textLayout.fontSize
                }
                Item {
                    Layout.fillWidth: true
                }
                StyledText {
                    text: BrightnessService.brightness
                    size: textLayout.fontSize
                }
            }
            Item {
                Layout.fillHeight: true
            }
            Rectangle {
                id: barContainer
                Layout.fillWidth: true
                Layout.rightMargin: 12
                Layout.bottomMargin: 12
                implicitHeight: 4
                color: Colors.surface_container_highest
                radius: 4
                Rectangle {
                    implicitWidth: parent.width * BrightnessService.brightness / 100
                    implicitHeight: parent.implicitHeight
                    color: container.color
                    radius: 4
                    Behavior on implicitWidth {
                        AnimateNumber {}
                    }
                    Behavior on color {
                        AnimateColor {}
                    }
                }
            }
        }
    }
}
