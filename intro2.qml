import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

Window {
    width: 800; height: 600
    color: "black"

    ColumnLayout {
        anchors.fill: parent

        Image {
            id: image
            source: "https://picsum.photos/800/600"
            fillMode: Image.PreserveAspectCrop
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            text: "Quit"
            Layout.alignment: Qt.AlignHCenter
            onClicked: {
                console.log("Quiting Application using Javascript")
                Qt.quit()
            }
        }
    }
}
