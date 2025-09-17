import QtQuick

Item {
    Row {
        anchors.fill: parent
        spacing: 10

        Column {
            spacing: 2

            Repeater {
                model: 10
                delegate: GreenBox {
                    required property int index
                    width: 200
                    height: 32
                    text: index
                }
            }
        }

        Column {
            spacing: 2

            Repeater {
                model: ["Enterprise", "Columbia", "Challenger", "Discovery", "Endeavour", "Atlantis"]

                delegate: GreenBox {
                    required property var modelData
                    required property int index

                    width: 200
                    height: 32
                    radius: 3

                    text: modelData + '(' + index + ')'

                }
            }
        }

        Column {
            spacing: 2

            Repeater {
                model: ListModel {
                    ListElement { name: "Mercury"; surfaceColor: "gray" }
                    ListElement { name: "Venus"; surfaceColor: "yellow" }
                    ListElement { name: "Earth"; surfaceColor: "blue" }
                    ListElement { name: "Mars"; surfaceColor: "orange" }
                    ListElement { name: "Jupiter"; surfaceColor: "orange" }
                    ListElement { name: "Saturn"; surfaceColor: "yellow" }
                    ListElement { name: "Uranus"; surfaceColor: "lightBlue" }
                     ListElement { name: "Neptune"; surfaceColor: "lightBlue" }
                }

                delegate: GreenBox{
                    id: greenBox

                    required property string name
                    required property color surfaceColor

                    width: 200
                    height: 32

                    radius: 3
                    text: name

                    Rectangle {
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.leftMargin: 4

                        width: 16
                        height: 16

                        radius: 8

                        color: greenBox.surfaceColor
                    }
                }
            }
        }

        Column {
            spacing: 2

            Repeater {
                model: 10

                GreenBox {
                    required property int index

                    width: 200
                    height: 32
                    text: index
                }
            }
        }
    }
}
