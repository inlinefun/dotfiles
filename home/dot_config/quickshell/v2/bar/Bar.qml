import Quickshell
import QtQuick
import QtQuick.Layouts

import qs.bar.components
import qs.common

// qmllint disable uncreatable-type
PanelWindow {
    id: bar
    anchors {
        top: true
        left: true
        right: true
    }
    implicitHeight: Constants.barHeight
    color: Colors.surface

    RowLayout {
        id: left
        anchors {
            top: parent.top
            left: parent.left
            bottom: parent.bottom
            leftMargin: Constants.screenBorder
        }
    }
    RowLayout {
        id: center
        anchors {
            top: parent.top
            bottom: parent.bottom
            horizontalCenter: parent.horizontalCenter
        }
    }
    RowLayout {
        id: right
        anchors {
            top: parent.top
            right: parent.right
            bottom: parent.bottom
            rightMargin: Constants.screenBorder
        }
        Battery {}
    }
}
