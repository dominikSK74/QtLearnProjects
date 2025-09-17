import QtQuick

Item {
    id: root
    property var text
    property int radius


    Rectangle {
       color: "green"
       anchors.fill: parent
       radius: radius
       Text {
            anchors.centerIn: parent
            text: root.text
            color: "white"
            font.pixelSize: 22
       }
    }
}
