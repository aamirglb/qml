import QtQuick 2.12

Rectangle {
    property alias text: label.text

    width: 48; height: 48
    color: "#67c111"
    border.color: Qt.lighter(color)

    Text {
        id: label
        text: qsTr("Green")
        anchors.centerIn: parent
    }

    MouseArea {
        anchors.fill: parent
        drag.target: parent
    }
}
