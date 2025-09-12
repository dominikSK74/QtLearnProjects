import QtQuick
import QtQuick.Controls

ApplicationWindow {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    header: ToolBar {
        ToolButton {
            id: menuButton
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            icon.source: "images/menu.svg"
            onClicked: drawer.open()
        }

        Label {
            anchors.centerIn: parent
            text: "MyAppPatterns"
            font.pixelSize: 20
            elide: Label.ElideRight
        }
    }

    Drawer {
        id: drawer
        width: Math.min(root.width, root.height) / 3 * 2
        height: root.height

        Column {
            anchors.fill: parent

            ItemDelegate {
                text: qsTr("Home")
                width: parent.width
                onClicked: {
                    stackView.push("Home.qml")
                    drawer.close()
                }
            }

            ItemDelegate {
                text: qsTr("Profile")
                width: parent.width
                onClicked: {
                    stackView.push("Profile.qml")
                    drawer.close()
                }
            }

            ItemDelegate {
                text: qsTr("About")
                width: parent.width
                onClicked: {
                    stackView.push(aboutComponent)
                    drawer.close()
                }
            }
        }
    }

    Component {
        id: aboutComponent

        About {}
    }

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: Home {}
    }
}
