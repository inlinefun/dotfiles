pragma Singleton

import QtQuick
import Quickshell

Singleton {
    id: root<* for name, value in colors *>
    readonly property color {{name}}: "{{value.default.hex}}"<* endfor *>
}
