import QtQuick
import Qt.labs.qmlmodels

Item {
    anchors.fill: parent

    Rectangle {
        anchors.fill: parent
        color: "darkgray"


        TableView {
            id: view
            anchors.fill: parent
            anchors.margins: 20

            rowSpacing: 5
            columnSpacing: 5
            clip: true

            model: TableModel {
                columns: [
                    TableModelColumn { display: "name" },
                    TableModelColumn { display: "city" }
                ]
                rows: [
                    { name: "1", city: "2" },
                    { name: "3", city: "4" },
                    { name: "5", city: "6" }
                ]
            }
            delegate: cellDelegate
       }
    }

    Component {
        id: cellDelegate

        GreenBox {
            id: wrapper

            required property string display

            implicitHeight: 40
            implicitWidth: 40

            radius: 15
            text: wrapper.display
        }
    }
}
