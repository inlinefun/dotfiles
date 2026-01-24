import QtQuick

import qs.animations
import qs.common
import qs.icons
import qs.services

MouseArea {
    id: root
    property color color: AudioService.muted ? Colors.error : Colors.on_surface
    implicitWidth: Constants.barHeight
    implicitHeight: Constants.barHeight
    acceptedButtons: Qt.LeftButton | Qt.MiddleButton
    hoverEnabled: true
    onClicked: event => {
        if (event.button == Qt.MiddleButton) {
            AudioService.toggleMute();
        }
    }
    onWheel: event => {
        let delta = event.angleDelta;
        AudioService.changeVolume(delta.y > 0);
    }
    VolumeIcon {
        anchors {
            centerIn: parent
        }
        color: root.color
    }
    VolumeOverlay1 {
        anchors {
            centerIn: parent
        }
        color: root.color
        opacity: Math.min(AudioService.volume, 50) / 100 * 2
        Behavior on opacity {
            AnimateNumber {}
        }
    }
    VolumeOverlay2 {
        anchors {
            centerIn: parent
        }
        color: root.color
        opacity: (Math.max(AudioService.volume, 50) - 50) / 100 * 2
        Behavior on opacity {
            AnimateNumber {}
        }
    }
    Rectangle {
        anchors {
            centerIn: parent
        }
        implicitWidth: 2
        implicitHeight: AudioService.muted ? 24 : 0
        color: root.color
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
