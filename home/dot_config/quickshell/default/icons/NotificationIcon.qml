// Generated from SVG file svgs/notification.svg
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
        ShapePath {
            id: _qt_shapePath_0
            strokeColor: "transparent"
            fillColor: __qt_toplevel.color
            fillRule: ShapePath.WindingFill
            pathHints: ShapePath.PathQuadratic | ShapePath.PathNonIntersecting | ShapePath.PathNonOverlappingControlPointTriangles
            PathSvg {
                path: "M 160 -200 L 160 -266.67 L 240 -266.67 L 240 -562.67 Q 240 -646.33 289.67 -712.17 Q 339.33 -778 420 -796 L 420 -820 Q 420 -845 437.5 -862.5 Q 455 -880 480 -880 Q 505 -880 522.5 -862.5 Q 540 -845 540 -820 L 540 -796 Q 620.67 -778 670.33 -712.17 Q 720 -646.33 720 -562.67 L 720 -266.67 L 800 -266.67 L 800 -200 L 160 -200 M 480 -80 Q 447 -80 423.5 -103.5 Q 400 -127 400 -160 L 560 -160 Q 560 -127 536.5 -103.5 Q 513 -80 480 -80 M 306.67 -266.67 L 653.33 -266.67 L 653.33 -562.67 Q 653.33 -634.67 602.67 -685.33 Q 552 -736 480 -736 Q 408 -736 357.33 -685.33 Q 306.67 -634.67 306.67 -562.67 L 306.67 -266.67 "
            }
        }
    }
}
