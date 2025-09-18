import QtQuick

Item {
    id: root
    property string text
    property int radius


    Rectangle {
       color: "yellow"
       anchors.fill: parent
       radius: radius
       Text {
            anchors.centerIn: parent
            text: root.text
            color: "black"
            font.pixelSize: 22
       }
    }
}
