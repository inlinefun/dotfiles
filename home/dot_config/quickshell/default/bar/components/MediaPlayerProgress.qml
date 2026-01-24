import QtQuick
import QtQuick.Shapes

import qs.common

Shape {
    id: shape

    required property real progress
    required property int radius
    readonly property real difference: 0.01

    preferredRendererType: Shape.CurveRenderer
    anchors {
        fill: parent
    }
    ShapePath {
        id: path
        fillColor: "transparent"
        strokeColor: Colors.inverse_on_surface
        strokeWidth: 2
        joinStyle: ShapePath.RoundJoin
        capStyle: ShapePath.RoundCap
        PathRectangle {
            x: 0
            y: 0
            width: shape.width
            height: shape.height
            radius: shape.radius
            strokeAdjustment: path.strokeWidth
        }
        trim {
            start: shape.progress + shape.difference
            end: 1.0 - shape.difference
        }
    }
    ShapePath {
        id: indicator
        fillColor: "transparent"
        strokeColor: Colors.primary
        strokeWidth: 2
        joinStyle: ShapePath.RoundJoin
        capStyle: ShapePath.RoundCap
        PathRectangle {
            x: 0
            y: 0
            width: shape.width
            height: shape.height
            radius: shape.radius
            strokeAdjustment: path.strokeWidth
        }
        trim {
            start: 0 + shape.difference
            end: shape.progress - shape.difference
        }
    }
}
