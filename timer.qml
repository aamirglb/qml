import QtQuick 2.12

DarkSquare {
    width: 400; height: 200

    Timer {
        interval: 500; running: true; repeat: true
        onTriggered: time.text = Date().toString()
    }

    Text {
        id: time
        anchors.centerIn: parent
        color: "white"
    }
}
