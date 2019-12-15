import QtQuick 2.12

Item {
    width: 100; height: 100

    Component {
        id: redSqure

        Rectangle {
            color: "red"
            width: 10; height: 10
        }
    }

    Loader { sourceComponent: redSqure }
    Loader { sourceComponent: redSqure; x: 20 }
}
