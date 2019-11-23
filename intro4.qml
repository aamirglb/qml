import QtQuick 2.12

Item {
    width: 680; height: 240

    Rectangle {
        id: rect1
        x: 12; y: 12
        width: 76; height: 96
        color: "lightsteelblue"
        MouseArea {
            id: area
            width: parent.width
            height: parent.height
            onClicked: rect2.visible = !rect2.visible
        }
    }

    Rectangle {
        id: rect2
        x: 112; y: 12
        width: 76; height: 96
        color: "transparent"
//        border.color: "lightsteelblue"
        border.color: "#FF0000"
        border.width: 4
        radius: 8
    }

    Rectangle {
        id: rect3
        x: 212; y: 12
        width: 76; height: 76
        border.color: "#00FA9A"
        border.width: 3
        property int radiusValue: 1
        radius: radiusValue
        focus: true
        Keys.onSpacePressed: {
            updateRadius()
        }

        function updateRadius() {
            radiusValue += 1
            console.log("New Radius: ", radiusValue)
        }
    }

    Rectangle {
        id: rect4
        x: 312; y: 12
        width: 176; height: 96
        gradient: Gradient {
            GradientStop { position: 0.0; color: "lightsteelblue" }
            GradientStop { position: 1.0; color: "slategray" }
        }
        border.color: "slategray"
    }

    Text {
        id: textlabel
        x: 12; y: 120
        text: qsTr("Qt Quick QML using Javascript")
        font {
            family: "Ubuntu"
            pixelSize: 28
        }
        color: "#000000"
        style: Text.Outline
    }

    Button { // custom button component
        id: button
        x: 312+176+20; y: 12
        text: "Start"
        property int clickCount: 0
        onClicked: {
//            status.text = "Button clicked!"
            buttonClicked()
        }

        function buttonClicked() {
            clickCount += 1
            status.text = "Button Clicked - " + clickCount + " !!"
        }
    }

    Text {
        id: status
        x: 312+176+20; y: 42
        width: 116; height: 26
        text: "waiting ..."
        horizontalAlignment: Text.AlignHCenter
    }
}
