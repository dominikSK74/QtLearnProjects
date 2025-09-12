import QtQuick

Item {
    id: root
    width: container.childrenRect.width
    height: container.childrenRect.height
    property alias text: label.text
    property alias color: kwadrat.color

    signal clicked
    Column {
        id: container
        Rectangle {
            id: kwadrat
            width: 50
            height: 50
        }
        Text {
            id: label
            width: kwadrat.width
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
            color: "#ececec"
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            root.clicked()
            console.log('clicked')
        }
    }
}
