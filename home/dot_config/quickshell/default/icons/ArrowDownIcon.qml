// Generated from SVG file svgs/arrow_down.svg
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
                path: "M 480 -356 Q 474 -356 469 -358 Q 464 -360 459 -365 L 261 -563 Q 252 -572 252.5 -584.5 Q 253 -597 262 -606 Q 271 -615 283.5 -615 Q 296 -615 305 -606 L 480 -430 L 656 -606 Q 665 -615 677 -614.5 Q 689 -614 698 -605 Q 707 -596 707 -583.5 Q 707 -571 698 -562 L 501 -365 Q 496 -360 491 -358 Q 486 -356 480 -356 "
            }
        }
    }
}
