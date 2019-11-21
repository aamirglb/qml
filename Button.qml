import QtQuick 2.12

Rectangle {
    id: root

    // Export properties
    property alias text: label.text
    signal clicked

    width: 116; height: 26
    color: "lightsteelblue"
    border.color: "slategrey"

    Text {
        id: label
        anchors.centerIn: parent
        text: qsTr("Start")
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            root.clicked()
        }
    }

}
