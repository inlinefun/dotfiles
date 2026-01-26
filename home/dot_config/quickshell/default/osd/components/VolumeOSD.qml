import QtQuick
import QtQuick.Layouts

import qs.animations
import qs.common
import qs.common.components
import qs.icons
import qs.osd
import qs.services

OSDItem {
    show: true
    RowLayout {
        id: layout
        spacing: 0
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
            id: wrapperLayout
            spacing: 0
            RowLayout {
                id: textLayout
                Layout.topMargin: Constants.margins
                Layout.rightMargin: Constants.margins
                StyledText {
                    text: "Volume"
                    size: 16
                }
                Item {
                    Layout.fillWidth: true
                }
                StyledText {
                    text: AudioService.volume
                    size: 16
                }
            }
            Item {
                id: spacer
                Layout.fillHeight: true
            }
            RowLayout {
                id: fillLayout
                readonly property int fillHeight: 4
                spacing: fillHeight
                Layout.bottomMargin: Constants.margins + fillHeight
                Layout.rightMargin: Constants.margins
                Rectangle {
                    Layout.fillWidth: true
                    Layout.preferredWidth: AudioService.volume
                    implicitWidth: spacer.width
                    implicitHeight: fillLayout.fillHeight
                    radius: fillLayout.fillHeight / 2
                    color: AudioService.muted ? Colors.error : Colors.primary
                    opacity: AudioService.volume > 0 ? 1 : 0
                    clip: true
                    Behavior on color {
                        AnimateColor {}
                    }
                    Behavior on opacity {
                        AnimateNumber {}
                    }
                    Behavior on Layout.preferredWidth {
                        AnimateNumber {}
                    }
                }
                Rectangle {
                    Layout.fillWidth: true
                    Layout.preferredWidth: 100 - AudioService.volume
                    implicitWidth: spacer.width
                    implicitHeight: fillLayout.fillHeight
                    radius: fillLayout.fillHeight / 2
                    color: Colors.surface_bright
                    opacity: AudioService.volume < 100 ? 1 : 0
                    clip: true
                    Behavior on color {
                        AnimateColor {}
                    }
                    Behavior on opacity {
                        AnimateNumber {}
                    }
                    Behavior on Layout.preferredWidth {
                        AnimateNumber {}
                    }
                }
            }
        }
    }
}
