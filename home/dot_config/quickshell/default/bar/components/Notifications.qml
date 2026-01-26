import QtQuick
import QtQuick.Layouts

import qs.animations
import qs.common
import qs.icons
import qs.services

MouseArea {
    id: root

    readonly property bool notificationsPresent: NotificationService.notifications.length > 0
    property color color: NotificationService.dnd ? Colors.error : notificationsPresent ? Colors.primary : Colors.on_surface

    Layout.fillHeight: true
    implicitWidth: height
    acceptedButtons: Qt.LeftButton | Qt.RightButton
    hoverEnabled: true
    onClicked: event => {
        if (event.button == Qt.LeftButton) {
            Persistence.togglePanel();
        } else {
            NotificationService.toggleDnd();
        }
    }

    NotificationIcon {
        id: icon
        anchors {
            centerIn: parent
        }
        color: root.color
    }
    NotificationOverlay {
        id: overlay
        anchors {
            centerIn: parent
        }
        color: root.color
        opacity: root.notificationsPresent ? 1.0 : 0.0
        Behavior on opacity {
            AnimateNumber {}
        }
    }
    Rectangle {
        anchors {
            centerIn: parent
        }
        implicitWidth: 2
        implicitHeight: NotificationService.dnd ? 24 : 0
        color: root.color
        opacity: NotificationService.dnd ? 1 : 0
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
