// Generated from SVG file svgs/music_note.svg
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
        ShapePath {
            id: _qt_shapePath_0
            strokeColor: "transparent"
            fillColor: __qt_toplevel.color
            fillRule: ShapePath.WindingFill
            pathHints: ShapePath.PathQuadratic | ShapePath.PathNonIntersecting | ShapePath.PathNonOverlappingControlPointTriangles
            PathSvg {
                path: "M 395.33 -120 Q 331.33 -120 286.67 -164.67 Q 242 -209.33 242 -273.33 Q 242 -337.33 286.67 -382 Q 331.33 -426.67 395.33 -426.67 Q 421.67 -426.67 443.17 -419.5 Q 464.67 -412.33 482 -399.33 L 482 -840 L 718 -840 L 718 -696.67 L 548.67 -696.67 L 548.67 -273.33 Q 548.67 -209.33 504 -164.67 Q 459.33 -120 395.33 -120 "
            }
        }
    }
}
