import QtQuick 2.0

DarkSquare {
    id: root
    width: 400; height: 300

    property int padding: 40
    property int duration: 4000
    property bool running: false

    GreenSquare {
        id: box
        x: root.padding;
        y: (root.height - height)/2

        NumberAnimation on x {
            to: root.width - box.width - root.padding
            duration: root.duration
            running: root.running
        }

        RotationAnimation on rotation {
            to: 360
            duration: root.duration
            running: root.running
        }

        NumberAnimation on opacity {
            to : 0.1
            duration: root.duration
            running: root.running
        }

        NumberAnimation on scale {
            to: 0.5
            duration: root.duration
            running: root.running
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: root.running = true
    }
}
