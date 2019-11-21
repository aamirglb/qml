import QtQuick 2.12

Item {
    width: bg.width
    height: bg.height

    Image {
        id: bg
        source: "bg.jpg"
    }

    MouseArea {
        id: backgroundClicker
        anchors.fill: parent
        onClicked: {
            // reset scene
            circle.x = 84
            box.rotation = 0
            triangle.rotation = 0
            triangle.scale = 1.0
        }
    }

    ClickableImage {
        id: circle
        x: 84; y: 68
        source: "circle.png"
        antialiasing: true
        onClicked: {
            x += 20
        }
    }

    ClickableImage {
        id: box
        x: 164; y: 68
        source: "box.png"
        antialiasing: true
        onClicked: {
            rotation += 15
        }
    }

    ClickableImage {
        id: triangle
        x: 248; y: 68
        source: "triangle.png"
        antialiasing: true
        onClicked: {
            rotation += 15
            scale += 0.05
        }
    }

    function _test_transformed() {
        circle.x += 20
        box.rotation = 15
        triangle.scale = 1.2
        triangle.rotation = -15
    }

    function _test_overlap() {
        circle.x += 40
        box.rotation = 15
        triangle.scale = 2.0
        triangle.rotation = 45
    }
}
