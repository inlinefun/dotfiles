import QtQuick
import QtQuick.Layouts

import qs.animations
import qs.bar.components
import qs.common.components
import qs.icons
import qs.osd
import qs.services

OSDItem {
    RowLayout {
        anchors {
            fill: parent
        }
        Item {
            id: container

            readonly property int iconSize: 28

            Layout.fillHeight: true
            implicitWidth: height
            ChargingIcon {
                id: chargingIcon
                anchors {
                    centerIn: parent
                }
                opacity: BatteryService.charging ? 1 : 0
                size: container.iconSize
                Behavior on opacity {
                    AnimateNumber {}
                }
            }
            Battery {
                anchors {
                    centerIn: parent
                }
                Behavior on opacity {
                    AnimateNumber {}
                }
                opacity: !BatteryService.charging ? 1 : 0
            }
        }
        StyledText {
            text: BatteryService.label
        }
    }
}
