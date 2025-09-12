import QtQuick 2.15
import QtQuick.Controls
import "../"

ImageViewerWindow {

    id: window
    width: 360
    height: 520

    header: ToolBar {
        Material.background: Material.Orange

        ToolButton {
            id: menuButton
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            icon.source: "images/menu.png"
            onClicked: drawer.open()
        }

        Label {
            anchors.centerIn: parent
            text: "Image Viewer"
            font.pixelSize: 20
            elide: Label.ElideRight
        }
    }

    Button {
        text: "test"
    }

    Drawer {
            id: drawer

            width: Math.min(window.width, window.height) / 3 * 2
            height: window.height

            ListView {
                       focus: true
                       currentIndex: -1
                       anchors.fill: parent

                       delegate: ItemDelegate {
                           width: parent.width
                           text: model.text
                           highlighted: ListView.isCurrentItem
                           onClicked: {
                               drawer.close()
                               model.triggered()
                           }
                       }

                       model: ListModel {
                           ListElement {
                               text: qsTr("Open...")
                               triggered: function() { openFileDialog(); }
                           }
                           ListElement {
                               text: qsTr("About...")
                               triggered: function() { openAboutDialog(); }
                           }
                       }

                       ScrollIndicator.vertical: ScrollIndicator { }
                   }
    }
}
