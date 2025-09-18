import QtQuick

Item {
    anchors.fill: parent
    Rectangle {
        color: 'darkgray'
        anchors.fill: parent

        ListView {
            id: list1

            width: parent.width
            height: 60
            anchors.margins: 20

            clip: true
            model: 100


            delegate: GreenBox {
                required property int index
                width: 40
                height: 40

                text: index
            }

            boundsBehavior: Flickable.DragOverBounds
            snapMode: ListView.SnapToItem
            spacing: 5

            orientation: ListView.Horizontal
            layoutDirection: Qt.RightToLeft
        }

        ListView {
            id: list2

            height: parent.height - 50
            width: parent.width / 2

            anchors.top: list1.bottom

            focus: true
            model: 100

            spacing: 5
            clip: true
            // orientation: ListView.Horizontal

            delegate: numberDelegate
            highlight: highlightComponent

            highlightRangeMode: ListView.ApplyRange

        }

        ListView {
            id: list3

            height: parent.height - 50
            width: parent.width / 2
            anchors.top: list1.bottom
            anchors.left: list2.right

            clip: true

            model: 4
            delegate: numberDelegate2
            header: headerComponent
            footer: footerComponent

            spacing: 2
        }

    }

    Component {
        id: highlightComponent

        Item {
            height: ListView.view ? ListView.view.currentItem.height : 0
            width: ListView.view ? ListView.view.width : 0

            y: ListView.view ? ListView.view.currentItem.y : 0

             Behavior on y {
                SequentialAnimation {
                    PropertyAnimation { target: highlightRectangle; property: "opacity"; to: 0; duration: 200 }
                    NumberAnimation { duration: 1 }
                    PropertyAnimation { target: highlightRectangle; property: "opacity"; to: 1; duration: 200 }
                }
            }

            GreenBox {
                id: highlightRectangle
                anchors.fill: parent
            }
        }
    }

    Component {
        id: numberDelegate

        Item {
            id: wrapper
            required property int index

            width: ListView.view ? 100 : 0
            height: 40

            Text {
                anchors.centerIn: parent
                font.pixelSize: 20
                text: wrapper.index
            }
        }
    }

    Component {
        id: headerComponent

        YellowBox {
            width: ListView.view ? ListView.view.width : 0
            height: 20
            text: 'Header'
        }
    }

    Component {
        id: footerComponent

        YellowBox {
            width: ListView.view ? ListView.view.width : 0
            height: 20
            text: 'Footer'
        }
    }

    Component {
        id: numberDelegate2

        GreenBox {
            required property int index

            width: ListView.view.width
            height: 40

            text: 'Item #' + index
        }
    }
}
