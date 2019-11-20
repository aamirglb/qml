import QtQuick 2.0

DarkSquare {
    id: root
    width: 200; height: 200
    property int duration: 3600
    property bool running: false

    focus: true
    GreenSquare {
        anchors.centerIn: parent
        RotationAnimation on rotation {
            id: animation
            loops: Animation.Infinite
            from: 0
            to: 360
            duration: root.duration
            running: root.running
        }
    }

    Keys.onPressed: {
        switch(event.key) {
        case Qt.Key_Plus:
            animation.duration /= 2
            console.log("Duration: ", root.duration)
            break;
        case Qt.Key_Minus:
            animation.duration *= 2
            console.log("Duration: ", root.duration)
            break;
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: root.running = !root.running
    }
}
