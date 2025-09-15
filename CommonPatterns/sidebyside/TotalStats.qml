import QtQuick
import QtQuick.Controls

Page {
    title: qsTr("Total stats page")
    property string pageName: "total-stats"

    header: Label {
           text: qsTr("Total")
           font.pixelSize: Qt.application.font.pixelSize * 2
           padding: 10
        }
    Column {
        anchors.centerIn: parent
        spacing: 25

        Label {
            text: "Total stats page"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("Back")
            onClicked: swipeView.setCurrentIndex(0);
        }
    }


}
