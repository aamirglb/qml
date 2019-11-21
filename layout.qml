import QtQuick 2.12

DarkSquare {
    width: 400; height: 300

    Grid {
        rows: 3
        columns: 3
        spacing: 8
        leftPadding: 8
        topPadding: 8
        GreenSquare {
            text: ''
            width: 100; height: 100
            BlueSquare {
                width: 12
                anchors.fill: parent
                anchors.margins: 8
                text: ' (1) '
            }
        }

        GreenSquare {
            text: ''
            width: 100; height: 100
            BlueSquare {
                width: 48
                y: 8
                anchors.left: parent.left
                anchors.leftMargin: 8
                text: ' (2) '
            }
        }

        GreenSquare {
            text: ''
            width: 100; height: 100
            BlueSquare {
                width: 48
                anchors.left: parent.right
                text: ' (3) '
            }
        }

        GreenSquare {
            text: ''
            width: 100; height: 100
            BlueSquare {
                id: blue1
                width: 48; height: 24
                y: 8
                anchors.horizontalCenter: parent.horizontalCenter
                text: ''
            }
            BlueSquare {
                id: blue2
                width: 72; height: 24
                anchors.top: blue1.bottom
                anchors.topMargin: 4
                anchors.horizontalCenter: blue1.horizontalCenter
                text: ' (4) '
            }
        }

        GreenSquare {
            text: ''
            width: 100; height: 100
            BlueSquare {
                width: 48
                anchors.centerIn: parent
                text: ' (5) '
            }
        }

        GreenSquare {
            text: ''
            width: 100; height: 100
            BlueSquare {
                width: 48
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenterOffset: -12
                text: ' (6) '

            }
        }
    }


}
