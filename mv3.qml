import QtQuick 2.0

Rectangle {
    width: 480; height: 80

    ListView {
        anchors.fill: parent
        anchors.margins: 20
        clip: true
        model: 100
        delegate: numberDelegate
        spacing: 4
        orientation: ListView.Horizontal
    }

    Component {
        id: numberDelegate

        GreenSquare {
            width: 40; height: 40
            text: index
        }
    }
}
