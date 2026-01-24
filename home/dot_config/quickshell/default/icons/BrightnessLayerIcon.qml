// Generated from SVG file svgs/brightness_layer.svg
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
                path: "M 480 -240 Q 380 -240 310 -310 Q 240 -380 240 -480 Q 240 -580 310 -650 Q 380 -720 480 -720 Q 580 -720 650 -650 Q 720 -580 720 -480 Q 720 -380 650 -310 Q 580 -240 480 -240 M 480 -306.67 Q 552 -306.67 602.67 -357.33 Q 653.33 -408 653.33 -480 Q 653.33 -552 602.67 -602.67 Q 552 -653.33 480 -653.33 Q 408 -653.33 357.33 -602.67 Q 306.67 -552 306.67 -480 Q 306.67 -408 357.33 -357.33 Q 408 -306.67 480 -306.67 "
            }
        }
    }
}
