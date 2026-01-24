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
            property color color: AudioService.muted ? Colors.error : Colors.on_surface

            Layout.fillHeight: true
            implicitWidth: height
            VolumeIcon {
                id: icon
                anchors {
                    centerIn: parent
                }
                color: container.color
                size: container.iconSize
            }
            VolumeOverlay1 {
                anchors {
                    centerIn: parent
                }
                opacity: Math.min(AudioService.volume, 50) / 100 * 2
                color: container.color
                size: container.iconSize
                Behavior on opacity {
                    AnimateNumber {}
                }
            }
            VolumeOverlay2 {
                anchors {
                    centerIn: parent
                }
                opacity: (Math.max(AudioService.volume, 50) - 50) / 100 * 2
                color: container.color
                size: container.iconSize
                Behavior on opacity {
                    AnimateNumber {}
                }
            }
            Rectangle {
                anchors {
                    centerIn: parent
                }
                implicitWidth: 2
                implicitHeight: AudioService.muted ? container.iconSize : 0
                color: container.color
                opacity: AudioService.muted ? 1 : 0
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
        ColumnLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            RowLayout {
                id: textLayout

                readonly property int fontSize: 16
                Layout.topMargin: 8
                Layout.rightMargin: 12

                StyledText {
                    text: "Volume"
                    color: Colors.on_surface
                    size: textLayout.fontSize
                }
                Item {
                    Layout.fillWidth: true
                }
                StyledText {
                    text: AudioService.volume
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
                    implicitWidth: parent.width * AudioService.volume / 100
                    implicitHeight: parent.implicitHeight
                    color: AudioService.muted ? Colors.error : Colors.primary
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
