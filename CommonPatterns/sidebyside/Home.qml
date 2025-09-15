import QtQuick
import QtQuick.Controls

Page {
    title: qsTr("Home page")
    property string pageName: "home"

    header: Label {
           text: qsTr("Home")
           font.pixelSize: Qt.application.font.pixelSize * 2
           padding: 10
        }

    Label {
        text: "Home page"
        anchors.centerIn: parent
    }

}

