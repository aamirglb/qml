import QtQuick 2.12

DarkSquare {
    id: root
    width: 860; height: 480

    BlueSquare {id: rect1}
    RedSquare {id: rect2; anchors.left: rect1.right; anchors.leftMargin: 1}

    BlueSquare {id:rect3; anchors.top: parent.top; anchors.topMargin: 58}
    GreenSquare{id:rect4; anchors.left: rect3.right; anchors.top: rect3.bottom;}

    BlueSquare {id:rect5; x:12; anchors.top: parent.top; anchors.topMargin: 58*3  }
    RedSquare {id: rect6; anchors.top: parent.top; anchors.topMargin: 58*3; anchors.left: rect5.right; anchors.right: rect7.left; }
    BlueSquare {id: rect7; anchors.top: parent.top; anchors.topMargin: 58*3; x: 150;
        MouseArea {
            anchors.fill: parent
            drag.target: rect7
            drag.axis: Drag.XAxis
            drag.minimumX: 150
            drag.maximumX: root.width - rect8.width
        }
    }

    GreenSquare {
        id: rect8
        anchors.top: parent.top
        anchors.topMargin: 58*4
        x: 12
        opacity: (root.width - rect8.x) / root.width
        MouseArea {
            anchors.fill: parent
            drag.target: rect8
            drag.axis: Drag.XAxis
            drag.minimumX: 12
            drag.maximumX: root.width - rect8.width
        }
    }

}
