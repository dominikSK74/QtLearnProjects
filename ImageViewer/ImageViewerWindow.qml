import QtQuick
import QtQuick.Controls 6.2
import Qt.labs.platform as Platform
import QtCore

ApplicationWindow {
    id: window
    visible: true
    title: qsTr("ImageViewer")

    function openFileDialog() { fileOpenDialog.open() }
    function openAboutDialog() { aboutDialog.open() }

    background: Rectangle {
        color: "darkGray"
    }

    Image {
        id: image
        anchors.fill: parent
        fillMode:  Image.PreserveAspectFit
        asynchronous: true
    }

    Platform.FileDialog {
        id: fileOpenDialog
        title: "Select  an image file"
        folder: StandardPaths.writableLocation(StandardPaths.DocumentsLocation)
        nameFilters: [
            "Image files (*.png *.jpeg *.jpg)"
        ]
        onAccepted: {
            console.log("Wybrano plik:", fileOpenDialog.file)
            image.source = fileOpenDialog.file
        }
    }

    Dialog {
        id: aboutDialog
        width: 350
        anchors.centerIn: parent
        title: qsTr("About")
        Label {
            anchors.fill: parent
            text: qsTr("About dialog test\n click ok")
            horizontalAlignment: Text.AlignHCenter
        }

        standardButtons: DialogButtonBox.Ok
    }

}
