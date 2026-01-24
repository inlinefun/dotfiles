import QtQuick
import Quickshell

import qs.common
import qs.common.components

Item {
    id: container
    implicitHeight: label.implicitHeight + 10
    implicitWidth: label.implicitWidth + 15
    StyledText {
        id: label
        text: Qt.formatDateTime(clock.date, "hh:mm A | MMM dd")
        color: Colors.on_surface
        anchors {
            centerIn: parent
        }
        size: 18
    }
    SystemClock {
        id: clock
        precision: SystemClock.Minutes
    }
}
