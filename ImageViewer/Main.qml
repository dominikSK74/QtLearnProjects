import QtQuick 2.15
import QtQuick.Controls
import "../"

ImageViewerWindow {
    id: window

    width: 640
    height: 480

    header: ToolBar {
        // Material.background: Material.Orange

        Flow {
            anchors.fill: parent
            ToolButton{
                text: qsTr("Open")
                icon.name: "document-open"
                onClicked: openFileDialog()            }
        }
    }

    menuBar: MenuBar{
        Menu {
            title: qsTr("&File")
            MenuItem {
                text: qsTr("&Open...")
                icon.name: "document-open"
                onTriggered: openFileDialog()
            }
        }

        Menu {
            title: qsTr("&Help")
            MenuItem {
                text: qsTr("&About...")
                onTriggered: openAboutDialog()
            }
        }
    }

    Button {
        text: "test"
    }
}
