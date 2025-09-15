import QtQuick
import QtQuick.Controls

Page {
    title: qsTr("Profile page")

    Column {
        anchors.centerIn: parent
        spacing: 10

        Label {
            text: "Profile page"
            anchors.horizontalCenter:  parent.horizontalCenter
        }

        Button {
            anchors.horizontalCenter:  parent.horizontalCenter
            text: qsTr("Edit")
            onClicked: stackView.push("EditProfile.qml")
            implicitWidth: 120
        }
    }
}

