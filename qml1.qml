import QtQuick 2.5

Rectangle {
    id: root
    width: 420; height: 240
    color: '#4A4A4A'

    Text {
        id: otherLabel
        width: root.width
        y: root.height - 100
        color: 'white'
        horizontalAlignment: Text.AlignHCenter
        text: 'Triangle'
        KeyNavigation.tab: thisLabel
    }

    Text {
        id: thisLabel
        x: 24; y: 16
        height: 2 * width

        property int times: 24
        property alias anotherTimes: thisLabel.times

        text: "Greetings " + times

        font.family: "Ubuntu"
        font.pixelSize: 24

        KeyNavigation.tab: otherLabel

        onHeightChanged: console.log('height: ', height)

        focus: true
        color: focus?"red":"black"
    }
}
