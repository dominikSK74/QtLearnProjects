import QtQuick 2.15

Item {
    id: root
    width: 70
    height: 70

    property color color: "transparent"
    property bool active: false
    signal clicked()

    Rectangle {
        anchors.fill: parent
        color: root.color
        radius: 4
        border.width: root.active ? 3 : 1
        border.color: root.active ? "white" : "black"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked()
    }
}
