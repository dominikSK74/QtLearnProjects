import QtQuick
import QtQuick.Controls

Page {
    title: qsTr("Stats page")
    property string pageName: "stats"

    header: Label {
           text: qsTr("Stats")
           font.pixelSize: Qt.application.font.pixelSize * 2
           padding: 10
        }


    Label {
        text: "Stats page"
        anchors.centerIn: parent
    }

}

