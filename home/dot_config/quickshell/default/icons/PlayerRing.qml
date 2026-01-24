// Generated from SVG file svgs/player_ring.svg
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
                path: "M 480 -80 Q 397.67 -80 324.67 -111.5 Q 251.67 -143 197.33 -197.33 Q 143 -251.67 111.5 -324.67 Q 80 -397.67 80 -480 Q 80 -563 111.5 -636 Q 143 -709 197.33 -763 Q 251.67 -817 324.67 -848.5 Q 397.67 -880 480 -880 Q 563 -880 636 -848.5 Q 709 -817 763 -763 Q 817 -709 848.5 -636 Q 880 -563 880 -480 Q 880 -397.67 848.5 -324.67 Q 817 -251.67 763 -197.33 Q 709 -143 636 -111.5 Q 563 -80 480 -80 M 480 -146.67 Q 619.33 -146.67 716.33 -244 Q 813.33 -341.33 813.33 -480 Q 813.33 -619.33 716.33 -716.33 Q 619.33 -813.33 480 -813.33 Q 341.33 -813.33 244 -716.33 Q 146.67 -619.33 146.67 -480 Q 146.67 -341.33 244 -244 Q 341.33 -146.67 480 -146.67 "
            }
        }
    }
}
