import QtQuick 2.12

DarkSquare {
    id: root
    width: 840
    height: 240

    Column {
        id: column
//        anchors.centerIn: parent
        anchors.left: parent.left
        anchors.leftMargin: 10
        spacing: 8
        RedSquare {}
        GreenSquare { width: 96 }
        BlueSquare {}
    }

    Row {
        id: row
        anchors.left: parent.left
        anchors.leftMargin: 10 + 96 + 20

        anchors.top: parent.top
        anchors.topMargin: 48 + 8

        spacing: 20
        BlueSquare {}
        GreenSquare {}
        RedSquare {}
    }

    Grid {
        id: grid
        rows: 2
        columns: 2
        anchors.right: parent.right
        anchors.rightMargin: 10
        spacing: 8
        RedSquare {}
        GreenSquare {}
        BlueSquare {}
        GreenSquare {}
    }

    BrightSquare {
        id: bright
        width: 160; height: 160
        anchors.right: parent.right
        anchors.rightMargin: 10+(48*2)+8+20+160

        Flow {
            anchors.fill: parent
            anchors.margins: 20
            spacing: 20
            RedSquare {}
            BlueSquare {}
            GreenSquare {}
        }
    }


}
