// Generated from SVG file svgs/play_overlay.svg
import QtQuick
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
                path: "M 420.67 -331.33 L 620.33 -459 Q 632.33 -466.67 632.33 -480 Q 632.33 -493.33 620.33 -501 L 420.67 -628.67 Q 408.33 -637.33 395.17 -630.17 Q 382 -623 382 -607.67 L 382 -352.33 Q 382 -337 395.17 -329.83 Q 408.33 -322.67 420.67 -331.33 "
            }
        }
    }
}
