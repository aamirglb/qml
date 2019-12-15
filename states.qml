import QtQuick 2.12

Item {
    id: myItem
    width: 200; height: 200

    Rectangle {
        id: myRect
        width: 100; height: 100
        color: "red"
    }

    states: [
        State {
            name: "moved"
            PropertyChanges {
                target: myRect
                x: 50; y: 50
            }
        },
        State {
            name: "back"
            PropertyChanges {
                target: myRect
                x: 0; y: 0
            }
        }
    ]

    transitions: [
        Transition {
            from: "*"
            to: "moved"
            NumberAnimation { properties: "x,y"; duration: 1000 }
        }
    ]
    MouseArea {
        anchors.fill: parent
        onClicked: { if( myItem.state == 'moved') {
                myItem.state = 'back'
            } else {
                myItem.state = 'moved'
            }
        }

    }
}
