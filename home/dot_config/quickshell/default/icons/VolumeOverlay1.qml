// Generated from SVG file svgs/volume_overlay_1.svg
import QtQuick
import QtQuick.Shapes

import qs.common

Item {
    id: __qt_toplevel
    property int size: Constants.iconSize
    property color color: Colors.on_surface
    implicitHeight: size
    implicitWidth: size
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
                path: "M 660 -480 Q 660 -428 634 -386 Q 608 -344 561 -322 Q 553 -318 546.5 -323 Q 540 -328 540 -336 L 540 -625 Q 540 -633 546.5 -638 Q 553 -643 561 -639 Q 608 -617 634 -574 Q 660 -531 660 -480 "
            }
        }
    }
}
