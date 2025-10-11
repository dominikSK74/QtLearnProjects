import QtQuick

Item {
    anchors.fill: parent

    Rectangle {
        anchors.fill: parent
        color: 'darkgray'

        ObjectModel {
            id: itemModel

            Rectangle { height: 60; width: 80; color: '#157efb'}
            Rectangle {
                height: 20; width: 300; color: '#53d769'
                Text { anchors.centerIn: parent; color: "black"; text: "Hello QML"}
            }
            Rectangle {height: 40; width: 40; radius: 10; color: "#fc1a1c"}
        }

        ListView {
            anchors.fill: parent
            anchors.margins: 10
            spacing: 5
            model: itemModel
        }
    }
}
