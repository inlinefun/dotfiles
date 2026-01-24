// Generated from SVG file svgs/notification_overlay.svg
import QtQuick
import QtQuick.VectorImage
import QtQuick.Shapes

import qs.common

Item {
    id: __qt_toplevel
    property int size: Constants.iconSize
    property color color: Colors.on_surface
    implicitWidth: size
    implicitHeight: size
    transform: [
        Translate {
            x: 0
            y: 960
        },
        Scale {
            xScale: __qt_toplevel.width / 960
            yScale: __qt_toplevel.height / 960
        }
    ]
    Shape {
        id: _qt_node0
        preferredRendererType: Shape.CurveRenderer
        objectName: "svg1"
        ShapePath {
            id: _qt_shapePath_0
            objectName: "svg_path:path1"
            strokeColor: "transparent"
            fillColor: __qt_toplevel.color
            fillRule: ShapePath.WindingFill
            pathHints: ShapePath.PathQuadratic | ShapePath.PathNonIntersecting | ShapePath.PathNonOverlappingControlPointTriangles
            PathSvg {
                path: "M 707.25 -613.33 Q 660 -613.33 627 -646.41 Q 594 -679.49 594 -726.75 Q 594 -774 627.08 -807 Q 660.16 -840 707.41 -840 Q 754.67 -840 787.67 -806.92 Q 820.67 -773.84 820.67 -726.59 Q 820.67 -679.33 787.59 -646.33 Q 754.51 -613.33 707.25 -613.33 "
            }
        }
    }
}
