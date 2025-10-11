import QtQuick

Item {
    anchors.fill: parent

    Rectangle {
        anchors.fill: parent
        color: 'darkgray'

        ListModel {
            id: actionModel

            ListElement {
                name: "Copenhagen"
                hello: function(value) {console.log(value + ": You clicked Copenhagen!");}
            }

            ListElement {
                name: "Helsinki"
                hello: function(value) {console.log(value + ": Helsinki here!");}
            }

            ListElement {
                name: "Oslo"
                hello: function(value) {console.log(value + ": Hei Hei fra Oslo!");}
            }

            ListElement {
                name: "Stockholm"
                hello: function(value) {console.log(value + ": Stockholm calling!");}
            }
        }

        ListView {
            anchors.fill: parent
            anchors.margins: 20

            focus: true

            model: actionModel
            delegate: Rectangle {
                id: delegate

                required property int index
                required property string name
                required property var hello

                width: ListView.view.width
                height: 40

                color: "#157efb"

                Text {
                    anchors.centerIn: parent
                    font.pixelSize: 10
                    text: delegate.name
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: delegate.hello(delegate.name)
                }
            }

            spacing: 5
            clip: true
        }
    }
}
