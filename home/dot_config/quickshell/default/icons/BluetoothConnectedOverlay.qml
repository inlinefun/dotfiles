// Generated from SVG file svgs/bluetooth_connected_overlay.svg
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
        preferredRendererType: Shape.CurveRenderer
        objectName: "svg1"
        id: _qt_node0
        ShapePath {
            id: _qt_shapePath_0
            objectName: "svg_path:path1"
            strokeColor: "transparent"
            fillColor: __qt_toplevel.color
            fillRule: ShapePath.WindingFill
            pathHints: ShapePath.PathQuadratic | ShapePath.PathNonIntersecting | ShapePath.PathNonOverlappingControlPointTriangles
            PathSvg { path: "M 200 -428 Q 178.33 -428 162.83 -443.17 Q 147.33 -458.33 147.33 -480 Q 147.33 -501.67 162.83 -517.5 Q 178.33 -533.33 200 -533.33 Q 221.67 -533.33 237.17 -517.5 Q 252.67 -501.67 252.67 -480 Q 252.67 -458.33 237.17 -443.17 Q 221.67 -428 200 -428 M 760 -428 Q 738.33 -428 722.83 -443.17 Q 707.33 -458.33 707.33 -480 Q 707.33 -501.67 722.83 -517.5 Q 738.33 -533.33 760 -533.33 Q 781.67 -533.33 797.17 -517.5 Q 812.67 -501.67 812.67 -480 Q 812.67 -458.33 797.17 -443.17 Q 781.67 -428 760 -428 " }
        }
    }
}
