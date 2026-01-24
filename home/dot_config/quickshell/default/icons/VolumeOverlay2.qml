// Generated from SVG file svgs/volume_overlay_2.svg
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
                path: "M 780 -481 Q 780 -575 727.5 -650 Q 675 -725 590 -759 Q 578 -764 573 -775 Q 568 -786 573 -797 Q 578 -809 590.5 -813.5 Q 603 -818 616 -813 Q 717 -772 778.5 -682 Q 840 -592 840 -481 Q 840 -370 778.5 -280 Q 717 -190 616 -149 Q 603 -144 590.5 -148.5 Q 578 -153 573 -165 Q 568 -176 573 -187 Q 578 -198 590 -203 Q 675 -237 727.5 -312 Q 780 -387 780 -481 "
            }
        }
    }
}
