import QtQuick

Item {
    anchors.fill: parent
    Rectangle {
        color: 'darkgray'
        anchors.fill: parent


        GridView {
            id: view
            anchors.fill: parent
            anchors.margins: 20

            clip: true
            model: 100

            cellWidth: 45
            cellHeight: 45

            delegate: GreenBox {
                required property int index
                width: 40
                height: 40
                text: index
            }

            flow: GridView.BottomToTop
        }

    }
}
