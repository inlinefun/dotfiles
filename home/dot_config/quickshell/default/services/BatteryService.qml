pragma Singleton

import Quickshell
import Quickshell.Services.UPower

Singleton {
    id: root

    readonly property UPowerDevice device: UPower.displayDevice
    readonly property int percentage: device.percentage
    readonly property bool ready: device.ready
    readonly property int state: ready ? device.state : UPowerDeviceState.Unknown
    readonly property bool charging: state === UPowerDeviceState.Charging
    readonly property bool full: state === UPowerDeviceState.FullyCharged
    readonly property int charge: ready ? Math.round(device.percentage * 100) : 100
    readonly property string label: UPowerDeviceState.toString(state)
    readonly property bool critical: charge <= 20
    readonly property bool regular: !charging && !critical
    signal onStateChange
    signal onChargeChange

    onChargeChanged: () => {
        if (charge <= 20 && charge % 5 == 0) {
            root.onChargeChange();
        }
    }
    onStateChanged: root.onStateChange()
}
