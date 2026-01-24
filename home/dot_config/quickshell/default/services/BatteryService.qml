pragma Singleton

import Quickshell
import Quickshell.Services.UPower

Singleton {
    readonly property UPowerDevice device: UPower.displayDevice
    readonly property bool ready: device.ready
    readonly property int state: ready ? device.state : UPowerDeviceState.Unknown
    readonly property bool charging: state === UPowerDeviceState.Charging
    readonly property bool full: state === UPowerDeviceState.FullyCharged
    readonly property int charge: ready ? Math.round(device.percentage * 100) : 100
}
