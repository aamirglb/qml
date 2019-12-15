import QtQuick 2.12

Rectangle {
    width: 200; height: 200; color: "red"

    Rectangle {
        x: 100; y: 100
        width: 100; height: 100
        color: "blue"

        Rectangle {
            width: 50; height: 50
            color: "green"
        }
    }
}
