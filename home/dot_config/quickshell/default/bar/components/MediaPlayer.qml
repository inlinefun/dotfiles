import QtQuick
import QtQuick.Layouts

import qs.animations
import qs.common
import qs.common.components
import qs.icons
import qs.services

MouseArea {
    Layout.fillHeight: true
    Layout.margins: 4
    implicitWidth: layout.implicitWidth + 12 // why 12? idk
    acceptedButtons: Qt.LeftButton | Qt.MiddleButton | Qt.RightButton

    onClicked: event => {
        if (event.button == Qt.MiddleButton) {
            MediaService.previous();
        } else if (event.button == Qt.RightButton) {
            MediaService.next();
        } else {
            MediaService.togglePlaying();
        }
    }
    visible: rect.opacity > 0

    Rectangle {
        id: rect

        property real progress: MediaService.progress

        anchors {
            fill: parent
        }
        radius: height
        color: Colors.surface_container
        opacity: MediaService.player != null ? 1 : 0
        RowLayout {
            id: layout
            anchors {
                fill: parent
                centerIn: parent
            }
            spacing: 0
            MouseArea {
                Layout.fillHeight: true
                Layout.preferredWidth: height
                acceptedButtons: Qt.LeftButton
                onClicked: event => {
                    event.accepted = true;
                    MediaService.togglePlaying();
                }
                visible: MediaService.canPause
                PlayerRing {
                    id: icon
                    anchors {
                        centerIn: parent
                    }
                }
                PlayOverlay {
                    anchors {
                        centerIn: parent
                    }
                    opacity: MediaService.playing ? 0 : 1
                    Behavior on opacity {
                        AnimateNumber {}
                    }
                }
                PauseOverlay {
                    anchors {
                        centerIn: parent
                    }
                    opacity: MediaService.playing ? 1 : 0
                    Behavior on opacity {
                        AnimateNumber {}
                    }
                }
            }
            StyledText {
                readonly property string label: MediaService.track
                text: {
                    const maxLength = 20;
                    if (label.length > 20) {
                        return label.substring(0, maxLength + 1) + "...";
                    }
                    return label;
                }
            }
        }
        MediaPlayerProgress {
            radius: rect.radius
            progress: rect.progress
        }
        Behavior on progress {
            AnimateNumber {}
        }
    }
}
