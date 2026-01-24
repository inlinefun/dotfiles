pragma Singleton

import Quickshell
import Quickshell.Services.SystemTray

Singleton {
    id: root
    readonly property var items: SystemTray.items.values
    readonly property bool hasItems: items.length > 0
    /*
     * NOT a very smart way, seems to work "fine"
     */
    function getFormattedIcon(icon: string): string {
        if (icon.includes("?path=")) {
            const split = icon.split("?path=");
            const file = split[0].replace("image://icon", "");
            const path = split[1];
            return Quickshell.iconPath(`${path}${file}.png`);
        }
        return icon;
    }
}
