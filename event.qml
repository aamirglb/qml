import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    visible: true
    width: 800; height: 640

    Rectangle {
        anchors.fill: parent
//        color: "#f0f0f0"
        color: "yellow"

        MouseArea {
            anchors.fill: parent
            onPressed: console.log("Parent pressed")
            onReleased: console.log("Parent released")
        }

        Rectangle {
            x: 100; y:100
            width: 100; height: 100
            color: "#67c111"

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    console.log("green pressed")
                }
                onReleased: {
                    console.log("green released")
                }
            }
        }
    }

    Rectangle {
        anchors.centerIn: parent
        width: 50; height: 2
    }

    Rectangle {
        anchors.centerIn: parent
        width: 2; height: 50
    }

    Rectangle {
        color: "white"
        width: 100; height: 100
        anchors.right: parent.right
        anchors.rightMargin:  50

        MouseArea {
            anchors.fill: parent
            onClicked: console.log("clicked white")
        }

        Rectangle {
            color: "black"
            width: 50; height: 50

            MouseArea {
                anchors.fill: parent
                propagateComposedEvents: true
                onClicked: {
                    console.log("clicked black")
                    mouse.accepted = false
                }
            }
        }
    }
}
