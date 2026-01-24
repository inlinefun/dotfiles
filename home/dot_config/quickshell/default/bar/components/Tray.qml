pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Widgets

import qs.animations
import qs.common
import qs.icons
import qs.services

MouseArea {
    id: root
    visible: TrayService.hasItems
    Layout.fillHeight: true
    implicitWidth: height
    hoverEnabled: true
    property color color: open ? Colors.primary : Colors.on_surface
    readonly property bool open: hovered | area.implicitHeight > 1
    readonly property bool hovered: root.containsMouse | area.containsMouse | menuOpen
    property bool menuOpen: false
    ArrowDownIcon {
        id: icon
        anchors {
            centerIn: parent
        }
        size: 36
        color: root.color
    }
    Behavior on color {
        AnimateColor {}
    }
    // popout
    PopupWindow {
        id: popup
        anchor {
            item: root
            adjustment: PopupAdjustment.Slide
            rect {
                x: -(width / 2) + (root.implicitWidth / 2)
                y: root.height
            }
        }
        visible: root.open
        color: "transparent"
        implicitWidth: layout.width + 8
        implicitHeight: 40
        MouseArea {
            id: area
            implicitWidth: popup.implicitWidth
            implicitHeight: root.hovered ? popup.implicitHeight : 1
            hoverEnabled: true
            ClippingRectangle {
                id: container
                anchors {
                    fill: parent
                }
                color: Colors.surface
                bottomLeftRadius: 10
                bottomRightRadius: 10
                RowLayout {
                    id: layout
                    anchors {
                        centerIn: parent
                    }
                    spacing: 0
                    Repeater {
                        model: TrayService.items
                        delegate: MouseArea {
                            id: item
                            required property var modelData
                            readonly property string icon: modelData.icon
                            acceptedButtons: Qt.LeftButton | Qt.RightButton
                            Layout.alignment: Qt.AlignVCenter
                            implicitWidth: 35
                            implicitHeight: implicitWidth
                            onClicked: event => {
                                if (event.button == Qt.LeftButton) {
                                    modelData.activate();
                                } else if (event.button == Qt.RightButton) {
                                    menuAnchor.open();
                                }
                            }
                            Item {
                                anchors {
                                    fill: parent
                                    margins: 4
                                }
                            }
                            IconImage {
                                anchors {
                                    centerIn: parent
                                }
                                source: TrayService.getFormattedIcon(item.icon)
                                mipmap: true
                                implicitSize: 24
                            }
                            QsMenuAnchor {
                                id: menuAnchor
                                anchor {
                                    item: item
                                }
                                menu: item.modelData.menu
                                onOpened: {
                                    root.menuOpen = true;
                                }
                                onVisibleChanged: {
                                    root.menuOpen = visible;
                                }
                                onClosed: {
                                    root.menuOpen = false;
                                }
                            }
                        }
                    }
                }
            }
            Behavior on implicitWidth {
                AnimateNumber {}
            }
            Behavior on implicitHeight {
                AnimateNumber {}
            }
        }
    }
}
