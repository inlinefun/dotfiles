import QtQuick

import qs.animations

MouseArea {
    id: root

    property bool show: false

    implicitWidth: 240
    implicitHeight: 60
    visible: opacity > 0
    opacity: show ? 1 : 0
    acceptedButtons: Qt.AllButtons
    onClicked: event => {
        root.show = false;
        event.accepted = true;
    }
    function resetTimer() {
        root.show = true;
        timer.restart();
    }

    Timer {
        id: timer
        interval: 2500
        running: true
        repeat: false
        onTriggered: root.show = false
    }
    Behavior on opacity {
        AnimateNumber {}
    }
}
