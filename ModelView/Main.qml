import QtQuick

Window {
    width: 840
    height: 480
    visible: true
    title: qsTr("ModelView")

    Rectangle {
        color: 'darkgray'
        height: 350
        width: 100

        ListView {
            anchors.fill: parent
            anchors.margins: 20

            clip: true
            model: 100


            delegate: GreenBox {
                required property int index
                width: 40
                height: 40

                text: index
            }

            // boundsBehavior: Flickable.DragOverBounds

            snapMode: ListView.SnapToItem

            spacing: 5
        }

    }
}
