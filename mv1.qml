import QtQuick 2.12

Column {
    spacing: 2

    Repeater {
        model: ["Enterprise", "Columbia", "Challenger", "Discovery", "Endeavour", "Atlantis"]
        Rectangle {
            width: 120; height: 32
            color: Qt.lighter("#0000FF")
            anchors.left: parent.left
//            anchors.top: parent.top
//            anchors.topMargin: 10
//            anchors.bottom: parent.bottom
//            anchors.bottomMargin: 10
            anchors.leftMargin: 2
            radius: 3
            Text {
                text: modelData + ' (' + index + ' )'
                anchors.centerIn: parent
            }
        }
    }
}
