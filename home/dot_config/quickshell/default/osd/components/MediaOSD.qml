import QtQuick
import QtQuick.Layouts
import Quickshell.Widgets

import qs.common
import qs.icons
import qs.services

OSDItem {
    id: root

    property double progress: MediaService.progress * 100.0
    property color color: Colors.foreground

    RowLayout {
        id: layout
        anchors {
            fill: parent
        }
        Item {
            Layout.fillHeight: true
            Layout.preferredWidth: height
            MediaCircleIcon {
                anchors {
                    centerIn: parent
                }
                color: root.color
                size: 28
            }
            MediaPauseIcon {
                anchors {
                    centerIn: parent
                }
                color: root.color
                size: 28
                opacity: MediaService.playing ? 1 : 0
                Behavior on opacity {
                    AnimateNumber {}
                }
            }
            MediaPlayIcon {
                anchors {
                    centerIn: parent
                }
                color: root.color
                size: 28
                opacity: MediaService.playing ? 0 : 1
                Behavior on opacity {
                    AnimateNumber {}
                }
            }
            IconImage {
                anchors {
                    fill: parent
                    margins: 4
                }
                source: MediaService.url
                mipmap: true
            }
        }
        ColumnLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.margins: Constants.marginS
            CText {
                Layout.fillWidth: true
                text: MediaService.track
                size: 18
            }
            Item {
                Layout.fillHeight: true
            }
            RowLayout {
                Layout.fillWidth: true
                Layout.fillHeight: true
                spacing: Constants.marginS
                Rectangle {
                    Layout.fillWidth: true
                    Layout.preferredWidth: root.progress
                    implicitHeight: 4
                    color: Colors.blue
                    radius: 2
                    opacity: root.progress === 0 ? 0 : 1
                    Behavior on opacity {
                        AnimateNumber {}
                    }
                }
                Rectangle {
                    Layout.fillWidth: true
                    Layout.preferredWidth: 100 - root.progress
                    Layout.preferredHeight: 4
                    color: Colors.background_variant
                    radius: 2
                    opacity: root.progress === 100 ? 0 : 1
                    Behavior on opacity {
                        AnimateNumber {}
                    }
                }
            }
            Item {
                Layout.fillHeight: true
            }
        }
    }
    Behavior on progress {
        AnimateNumber {
            duration: 1000
            easing.type: Easing.Linear
        }
    }
}
