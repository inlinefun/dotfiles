import QtQuick
import QtQuick.Layouts

import qs.animations
import qs.common
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
            PowerSaverIcon {
                anchors {
                    centerIn: parent
                }
                opacity: PowerService.powersaver ? 1 : 0
                size: container.iconSize
                Behavior on opacity {
                    AnimateNumber {}
                }
            }
            BalancedIcon {
                anchors {
                    centerIn: parent
                }
                opacity: PowerService.balanced ? 1 : 0
                size: container.iconSize
                Behavior on opacity {
                    AnimateNumber {}
                }
            }
            PerformanceIcon {
                anchors {
                    centerIn: parent
                }
                opacity: PowerService.performance ? 1 : 0
                size: container.iconSize
                Behavior on opacity {
                    AnimateNumber {}
                }
            }
        }
        StyledText {
            text: PowerService.label
        }
    }
}
