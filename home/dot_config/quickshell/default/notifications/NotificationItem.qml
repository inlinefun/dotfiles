import QtQuick
import QtQuick.Layouts
import Quickshell.Services.Notifications

import qs.common
import qs.common.components

Rectangle {
    id: container
    Layout.fillWidth: true
    Layout.minimumHeight: 80
    radius: Constants.radius / 2
    color: Colors.surface_container
    required property Notification modelData
    RowLayout {
        id: layout
        spacing: 10
        anchors {
            fill: parent
            margins: Constants.margins
        }
        Image {
            id: image
            Layout.fillHeight: true
            Layout.maximumWidth: height
            fillMode: Image.PreserveAspectFit
            source: {
                var img = container.modelData.image;
                if (img == null || img.length == 0) {
                    return container.modelData.appIcon;
                }
                return img;
            }
        }
        ColumnLayout {
            id: textLayout
            StyledText {
                text: container.modelData.appName
                bold: true
            }
            StyledText {
                Layout.fillWidth: true
                text: container.modelData.summary
                wordwrap: true
                maxLines: 2
            }
        }
    }
    MouseArea {
        anchors {
            fill: parent
        }
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked: event => {
            if (event.button === Qt.LeftButton) {
                container.modelData.actions[0].invoke();
            } else {
                container.modelData.tracked = false;
                container.modelData.dismiss();
            }
        }
    }
}
