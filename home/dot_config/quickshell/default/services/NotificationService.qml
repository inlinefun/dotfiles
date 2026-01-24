pragma Singleton

import Quickshell
import Quickshell.Services.Notifications

Singleton {
    id: root
    readonly property list<Notification> notifications: server.trackedNotifications.values
    readonly property bool dnd: _persistence.dnd
    PersistentProperties {
        id: _persistence
        reloadableId: "notifications.service"
        property bool dnd: false
    }
    NotificationServer {
        id: server
        imageSupported: true
        actionsSupported: true
        bodySupported: true
        keepOnReload: true
        persistenceSupported: true
        onNotification: notification => {
            notification.tracked = true;
        }
    }
    function toggleDnd() {
        _persistence.dnd = !_persistence.dnd;
    }
    function clearAll() {
        for (var i = 0; i < root.notifications.length; i++) {
            notifications[i].dismiss();
        }
    }
}
