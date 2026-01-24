// Generated from SVG file svgs/volume_icon.svg
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
                path: "M 280 -360 L 150 -360 Q 137 -360 128.5 -368.5 Q 120 -377 120 -390 L 120 -570 Q 120 -583 128.5 -591.5 Q 137 -600 150 -600 L 280 -600 L 429 -749 Q 443 -763 461.5 -755.5 Q 480 -748 480 -728 L 480 -232 Q 480 -212 461.5 -204.5 Q 443 -197 429 -211 L 280 -360 M 420 -648 L 307 -540 L 180 -540 L 180 -420 L 307 -420 L 420 -311 L 420 -648 "
            }
        }
    }
}
