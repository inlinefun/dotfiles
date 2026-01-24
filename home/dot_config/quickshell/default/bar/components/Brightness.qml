import QtQuick

import qs.animations
import qs.common
import qs.icons
import qs.services

MouseArea {
    id: root
    property color color: BrightnessService.brightness == 100 ? Colors.primary : BrightnessService.brightness <= 20 ? Colors.error : Colors.on_surface
    implicitWidth: Constants.barHeight
    implicitHeight: Constants.barHeight
    onWheel: event => {
        let delta = event.angleDelta;
        BrightnessService.changeBrightness(delta.y > 0);
    }
    BrightnessLayerIcon {
        id: icon
        anchors {
            centerIn: parent
        }
        color: root.color
    }
    Item {
        width: icon.size
        height: icon.size
        anchors.centerIn: parent
        transformOrigin: Item.Center
        rotation: 45 * BrightnessService.brightness / 100
        scale: 0.8 + (0.2 * (BrightnessService.brightness / 100))
        BrightnessOverlay {
            anchors.fill: parent
            opacity: Math.max(0.5, BrightnessService.brightness / 50)
            color: root.color
            size: icon.size
        }
        Behavior on rotation {
            NumberAnimation {}
        }
    }
    Behavior on color {
        AnimateColor {}
    }
}
