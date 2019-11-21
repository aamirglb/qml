import QtQuick 2.12

Rectangle {
    property alias text: label.text
    width: 48; height: 48
    color: "#00bde3"
    border.color: Qt.lighter(color)

    Text {
        id: label
        text: qsTr("Blue")
        anchors.centerIn: parent
    }

    MouseArea {
        anchors.fill: parent
        drag.target: parent
    }
}
