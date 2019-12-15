import QtQuick 2.12

Rectangle {
    width: 300; height: 100

    color: Qt.application.active ? "white" : "lightgray"
    Text {
        text: "Application " + (Qt.application.active ? "Active" : "Inactive")
        opacity: Qt.application.active ? 1.0 : 0.5
        anchors.centerIn: parent
    }
}
