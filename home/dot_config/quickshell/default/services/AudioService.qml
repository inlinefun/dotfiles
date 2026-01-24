pragma Singleton

import Quickshell
import Quickshell.Services.Pipewire

Singleton {
    id: root

    readonly property PwNode sink: Pipewire.defaultAudioSink
    readonly property bool ready: sink?.ready ?? false
    readonly property PwNodeAudio audio: ready ? sink.audio : null
    readonly property bool muted: ready ? audio?.muted : false ?? false
    readonly property int volume: ready ? Math.round(audio.volume * 100) : -1
    property bool _init: false
    signal onVolumeChange
    signal onMuteChange

    onVolumeChanged: () => {
        if (!_init) {
            _init = true;
            return;
        }
        root.onVolumeChange();
    }
    onMutedChanged: () => {
        if (!_init) {
            _init = true;
            return;
        }
        root.onMuteChange();
    }

    PwObjectTracker {
        objects: [root.sink]
    }

    function toggleMute() {
        audio.muted = !muted;
    }
    function changeVolume(increment: bool) {
        if (increment) {
            if (volume >= 100)
                return;
            audio.volume += 0.05;
        } else {
            if (volume <= 0)
                return;
            audio.volume -= 0.05;
        }
        audio.volume = Math.max(0.0, Math.min(1.0, audio.volume))
    }
}
