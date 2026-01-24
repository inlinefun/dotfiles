import QtQuick

import qs.animations
import qs.common
import qs.icons
import qs.services

MouseArea {
    id: root

    property color color: Colors.on_surface

    implicitWidth: Constants.barHeight
    implicitHeight: Constants.barHeight
    acceptedButtons: Qt.LeftButton | Qt.RightButton

    onClicked: event => {
        PowerService.switchProfiles(event.button == Qt.RightButton);
    }

    PowerSaverIcon {
        anchors {
            centerIn: parent
        }
        opacity: PowerService.powersaver ? 1 : 0
        Behavior on opacity {
            AnimateNumber {}
        }
    }
    BalancedIcon {
        anchors {
            centerIn: parent
        }
        opacity: PowerService.balanced ? 1 : 0
        Behavior on opacity {
            AnimateNumber {}
        }
    }
    PerformanceIcon {
        anchors {
            centerIn: parent
        }
        opacity: PowerService.performance ? 1 : 0
        Behavior on opacity {
            AnimateNumber {}
        }
    }
}
