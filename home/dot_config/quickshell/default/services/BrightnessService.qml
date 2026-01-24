pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Io

Singleton {
    id: root

    readonly property int brightness: _value
    readonly property int rawValue: _raw
    readonly property int maxValue: _max
    property int _value: 0
    property int _raw: 0
    property int _max: 0
    property bool _init: false
    signal onBrightnessChange

    function changeBrightness(increment: bool) {
        root.onBrightnessChange();
        if (increment) {
            if (brightness >= 100) {
                return;
            }
            Quickshell.execDetached(["brightnessctl", "-n", "set", "5%+"]);
        } else {
            if (brightness <= 0) {
                return;
            }
            Quickshell.execDetached(["brightnessctl", "-n", "set", "5%-"]);
        }
        if (!process.running) {
            process.running = true
        }
    }

    on_ValueChanged: {
        if (!_init) {
            _init = true;
            return;
        }
        root.onBrightnessChange();
    }

    Timer {
        running: true
        repeat: true
        interval: 100
        onTriggered: process.running = true
    }

    Process {
        id: process
        running: true
        command: ["brightnessctl", "-m"]
        stdout: StdioCollector {
            id: collector
            waitForEnd: true
            onStreamFinished: () => {
                const out = data.toString();
                const values = out.split(",");
                const raw = values[2];
                const percentage = values[3].replace('%', '');
                const max = values[4];
                root._raw = raw;
                root._value = percentage;
            }
        }
    }
}
