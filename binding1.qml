import QtQuick 2.12

DarkSquare {
    width: 100; height: width * 2

    GreenSquare {
        width: 50; height: parent.width * 2
        focus: true
        Keys.onSpacePressed: {
//            height = width * 3
            height = Qt.binding(function() { return parent.width / 3 })
        }
    }
}
