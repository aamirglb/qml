import QtQuick 2.12

DarkSquare {
    id: root
    width: 400; height: 400

//    Column {
//        anchors.centerIn: parent
//        anchors.top: parent.top
//        anchors.topMargin: 10
//        spacing: 10

        RedSquare {
            id: first
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: (parent.width * 0.5) - width / 2

            text: ""
            RotationAnimation on rotation {
                loops: Animation.Infinite
                from: 0
                to: 360
                duration: 3600
            }
        }

        BlueSquare {
            id: second
            text: ''
            anchors.top: first.bottom
            anchors.topMargin: 20
            anchors.left: first.left

            NumberAnimation on width {
                from: 48
                to: 144
                duration: 2000
                loops: Animation.Infinite
            }

//            SequentialAnimation {
//                PropertyAction { target: second; property: "smooth"; value: "true" }
//                NumberAnimation { target: second; property: "width"; to: 144; duration: 1000 }
//                PropertyAction { target: second; property: "smooth"; value: "false" }
//            }
        }

        GreenSquare {
            text: ''
            anchors.centerIn: parent
            NumberAnimation on visible {
                from: 1
                to: 0
                duration: 1000
                loops: Animation.Infinite
            }
        }

        BlueSquare {
            text: ''
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: (parent.width * 0.5) - width / 2

            RotationAnimation on rotation {
                loops: Animation.Infinite
                from: 0
                to: 360
                duration: 3600
            }

            ColorAnimation on color {
                from: "white"
                to: "black"
                duration: 1000
                loops: Animation.Infinite
            }
        }

        RedSquare {
            text: ''
            x: (parent.width * 0.5) - width / 2
            y: (parent.height * 0.5) + height / 2 + 20
            property int index: 0
            property var colorList: ["#67c111", "#ea7025", "#00bde3"]

            color: colorList[index]

            NumberAnimation on index {
                from: 0
                to: 2
                duration: 3600
                loops: Animation.Infinite
            }

            RotationAnimation on rotation {
                loops: Animation.Infinite
                from: 0
                to: 360
                duration: 3600
            }

        }

        RedSquare {
            color: "red"
            text: ''
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 10

            SequentialAnimation on color {
                loops: Animation.Infinite
                ColorAnimation { to: "yellow"; duration: 1000 }
                ColorAnimation { to: "blue"; duration: 1000 }
            }
        }

//    }

}
