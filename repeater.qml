import QtQuick 2.12

DarkSquare {
    id: root
    width: 252; height: 252 * 2
    property variant colorArray: ["#00bde3", "#67c111", "#ea7025"]    

    Grid {
        anchors.fill: parent
        anchors.margins: 8
        spacing: 4
        Repeater {
            model: 16
            Rectangle {
                width: 56; height: 56
//                property int colorIndex: Math.floor(Math.random() * 3)
                property int colorIndex: index % 3
                color: root.colorArray[colorIndex]
                border.color: Qt.lighter(color)

                Text {
                    anchors.centerIn: parent
                    color: "#f0f0f0"
                    text: "Cell " + index
                }

                function getColor() {
                    var colorCode = root.colorArray[root.colorIndex]
                    root.colorIndex += 1
                    if( root.colorIndex >= 3 )
                        root.colorIndex = 0
                    console.log(root.colorIndex)
                    return colorCode
                }
            }
        }
    }

    Row {
        anchors.top: parent.top
        anchors.topMargin: 260
        anchors.left: parent.left
        anchors.leftMargin: 8
        Rectangle {
            width: 10; height: 20; color: "#ea7025"
        }
        Repeater {
            model: 10
            Rectangle { width: 20; height: 20; radius: 10; color: "#67c111" }
        }
        Rectangle {
            width: 10; height: 20; color: "#00bde3"
        }
    }

    Column {
        anchors.top: parent.top
        anchors.topMargin: 300
        anchors.left: parent.left
        anchors.leftMargin: 8

        Repeater {
            model: ["apples", "oranges", "pears", "bananna", "grapes"]
            Text {
                text: "Data: " + modelData
                color: "#67c111"
            }
            onItemAdded: {
                newItemAdded(index, item)
            }
            function newItemAdded(index, item) {
                console.log(index + ". " + item.text)
            }
        }
    }

}
