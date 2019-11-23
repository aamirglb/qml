import QtQuick 2.12

DarkSquare {
    width: 400; height: 400

//    Rectangle {
//        anchors.centerIn: parent
//        z: 1

//        Rectangle {
//            anchors.centerIn: parent
//            width: 2; height: 100
//            color: "white"
//        }

//        Rectangle {
//            anchors.centerIn: parent
//            width: 100; height: 2
//            color: "white"
//        }

////        NumberAnimation on rotation {
////            from: 0
////            to: 360
////            duration: 4000
////            loops: Animation.Infinite
////        }
//    }

//    Rectangle {
//        anchors.centerIn: parent
//        width: 80; height: 80; radius: 40
//        color: parent.color
//        border.color: "white"
//        border.width: 2
//    }

    Item {
        id: aeroplace
//        anchors.left: parent.left
//        anchors.leftMargin: 8
//        anchors.top: parent.top
//        anchors.topMargin: 4

        anchors.centerIn: parent
        Rectangle {
            id: body
            anchors.centerIn: parent
            width: 8; height: 40; radius: 15
            color: "transparent"
            border.color: "white"
            border.width: 1

            Rectangle {
                x: -10; y:8
                width: 30; height: 2
                color: "white"
            }

            Rectangle {
                x: -5; y: 32
                width: 18; height: 2
                color: "white"
            }
        }




    }



}
