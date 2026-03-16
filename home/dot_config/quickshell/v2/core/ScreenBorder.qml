import Quickshell
import QtQuick
import QtQuick.Shapes

import qs.bar
import qs.common

// qmllint disable uncreatable-type
Scope {
    id: root
    readonly property real size: Constants.screenBorder
    readonly property int radius: Constants.radius

    // PanelWindow {
    //     id: top
    //     anchors {
    //         top: true
    //         left: true
    //         right: true
    //     }
    //     implicitHeight: root.size
    //     color: Colors.surface
    // }
    Bar {}
    PanelWindow {
        id: topRight
        anchors {
            top: true
            right: true
        }
        implicitWidth: root.radius
        implicitHeight: root.radius
        color: "transparent"
        Rectangle {
            Shape {
                anchors {
                    fill: parent
                }
                preferredRendererType: Shape.CurveRenderer
                ShapePath {
                    strokeWidth: 0
                    startX: 0
                    startY: 0
                    fillColor: Colors.surface
                    PathArc {
                        x: root.radius
                        y: root.radius
                        radiusX: root.radius
                        radiusY: root.radius
                        direction: PathArc.Clockwise
                    }
                    PathLine {
                        x: root.radius
                        y: 0
                    }
                    PathLine {
                        x: 0
                        y: 0
                    }
                }
            }
        }
    }
    PanelWindow {
        id: right
        anchors {
            top: true
            right: true
            bottom: true
        }
        implicitWidth: root.size
        color: Colors.surface
    }
    PanelWindow {
        id: bottomRight
        anchors {
            right: true
            bottom: true
        }
        implicitWidth: root.radius
        implicitHeight: root.radius
        color: "transparent"
        Rectangle {
            Shape {
                anchors {
                    fill: parent
                }
                preferredRendererType: Shape.CurveRenderer
                ShapePath {
                    strokeWidth: 0
                    startX: 0
                    startY: root.radius
                    fillColor: Colors.surface
                    PathLine {
                        x: root.radius
                        y: root.radius
                    }
                    PathLine {
                        x: root.radius
                        y: 0
                    }
                    PathArc {
                        x: 0
                        y: root.radius
                        radiusX: root.radius
                        radiusY: root.radius
                        direction: PathArc.Clockwise
                    }
                }
            }
        }
    }
    PanelWindow {
        id: bottom
        anchors {
            left: true
            right: true
            bottom: true
        }
        implicitHeight: root.size
        color: Colors.surface
    }
    PanelWindow {
        id: bottomLeft
        anchors {
            left: true
            bottom: true
        }
        implicitWidth: root.radius
        implicitHeight: root.radius
        color: "transparent"
        Rectangle {
            Shape {
                anchors {
                    fill: parent
                }
                preferredRendererType: Shape.CurveRenderer
                ShapePath {
                    strokeWidth: 0
                    startX: root.radius
                    startY: root.radius
                    fillColor: Colors.surface
                    PathArc {
                        x: 0
                        y: 0
                        radiusX: root.radius
                        radiusY: root.radius
                        direction: PathArc.Clockwise
                    }
                    PathLine {
                        x: 0
                        y: root.radius
                    }
                    PathLine {
                        x: root.radius
                        y: root.radius
                    }
                }
            }
        }
    }
    PanelWindow {
        id: left
        anchors {
            top: true
            left: true
            bottom: true
        }
        implicitWidth: root.size
        color: Colors.surface
    }
    PanelWindow {
        id: topLeft
        anchors {
            top: true
            left: true
        }
        implicitWidth: root.radius
        implicitHeight: root.radius
        color: "transparent"
        Rectangle {
            Shape {
                anchors {
                    fill: parent
                }
                preferredRendererType: Shape.CurveRenderer
                ShapePath {
                    strokeWidth: 0
                    startX: 0
                    startY: root.radius
                    fillColor: Colors.surface
                    PathArc {
                        x: root.radius
                        y: 0
                        radiusX: root.radius
                        radiusY: root.radius
                        direction: PathArc.Clockwise
                    }
                    PathLine {
                        x: 0
                        y: 0
                    }
                    PathLine {
                        x: 0
                        y: root.radius
                    }
                }
            }
        }
    }
}
