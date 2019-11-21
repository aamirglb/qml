import QtQuick 2.12

DarkSquare {
    width: 400; height: 300

    RedSquare {
        id: red
        z: 1
        width: 80; height: 80

        MouseArea {
            anchors.fill: parent
            onClicked: red.z = blue.z + 1
        }
    }

    BlueSquare {
        id: blue
        x: 50; y: 50
        width: 80; height: 80

        MouseArea {
            anchors.fill: parent
            onClicked: blue.z = red.z + 1
        }
    }

    GreenSquare {
        id: square
        x: 8; y: 200
    }
    focus: true
    Keys.onLeftPressed: square.x -= 8
    Keys.onRightPressed: square.x += 8
    Keys.onUpPressed: square.y -= 8
    Keys.onDownPressed: square.y += 8
    Keys.onPressed: {
        switch(event.key) {
        case Qt.Key_Plus:
            square.scale += 0.2
            break;
        case Qt.Key_Minus:
            square.scale -= 0.2
            break;
        }
    }

}
