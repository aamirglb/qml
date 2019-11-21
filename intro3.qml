import QtQuick 2.12

Rectangle {
    id: root
    width: 480; height: 240
    color: "#4A4A4A"

    Text {
        id: label1
        y: root.height - 50
        width: root.width
        focus: false
        color: focus?"red":"white"
        horizontalAlignment: Text.AlignHCenter
        text: 'Triangle'
        KeyNavigation.tab: label2

    }

    Text {
        id: label2
        x: root.width/2 - 80; y: 16
        height: 2 * width
        property int times: 1
        text: "Greetings " + times
//        font.family: "Ubuntu"
//        font.pixelSize: 24
        font {
            family: "Ubuntu"
            pixelSize: 24
        }

        KeyNavigation.tab: label3
        onHeightChanged: console.log('height: ', height)
        onFocusChanged: ++times
        focus: true
        color: focus?"red":"white"
    }

    Text {
        id: label3
        x: root.width/2 - 100; y: root.height/2
        property int spacePresses: 0
        text: "Space pressed: " + spacePresses + " times!!"
        onTextChanged: console.log("text changed to: ", text)
        focus: false
        color: focus?"red":"white"
        KeyNavigation.tab: label1
        Keys.onSpacePressed: {
            increment()
        }
        Keys.onEscapePressed: {
            label3.text = ''
        }

        function increment() {
            spacePresses += 1
        }
    }

}
