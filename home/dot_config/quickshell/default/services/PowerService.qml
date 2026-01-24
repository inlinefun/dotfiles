pragma Singleton

import Quickshell
import Quickshell.Services.UPower

Singleton {
    id: root

    property int _profile: PowerProfiles.profile
    readonly property int profile: _profile
    readonly property string label: PowerProfile.toString(profile)
    readonly property bool powersaver: profile == PowerProfile.PowerSaver
    readonly property bool balanced: profile == PowerProfile.Balanced
    readonly property bool performance: profile == PowerProfile.Performance
    property bool _init: false
    signal onProfileChange

    onProfileChanged: () => {
        if (!_init) {
            _init = true;
            return;
        }
        PowerProfiles.profile = _profile;
        root.onProfileChange();
    }

    function switchProfiles(behind: bool) {
        var profile = _profile + (behind ? -1 : 1);
        _profile = profile > 2 ? 0 : profile < 0 ? 2 : profile; // probably not the smartest
    }
}
