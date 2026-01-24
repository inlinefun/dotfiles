// Generated from SVG file svgs/pause_overlay.svg
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
                path: "M 400.12 -320 Q 414.33 -320 423.83 -329.58 Q 433.33 -339.17 433.33 -353.33 L 433.33 -606.67 Q 433.33 -620.83 423.72 -630.42 Q 414.1 -640 399.88 -640 Q 385.67 -640 376.17 -630.42 Q 366.67 -620.83 366.67 -606.67 L 366.67 -353.33 Q 366.67 -339.17 376.28 -329.58 Q 385.9 -320 400.12 -320 M 560.12 -320 Q 574.33 -320 583.83 -329.58 Q 593.33 -339.17 593.33 -353.33 L 593.33 -606.67 Q 593.33 -620.83 583.72 -630.42 Q 574.1 -640 559.88 -640 Q 545.67 -640 536.17 -630.42 Q 526.67 -620.83 526.67 -606.67 L 526.67 -353.33 Q 526.67 -339.17 536.28 -329.58 Q 545.9 -320 560.12 -320 "
            }
        }
    }
}
