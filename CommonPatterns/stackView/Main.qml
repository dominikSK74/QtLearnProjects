import QtQuick
import QtQuick.Controls

ApplicationWindow {
    id: root
    width: 340
    height: 540
    visible: true
    title: qsTr("Hello World")

    header: ToolBar {

        background: Rectangle {
            color: "green"
            implicitHeight: menuButton.height
        }

        ToolButton {
            id: menuButton
            background: null
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            icon.source: {
                if(stackView.currentItem.pageName === "home") {
                    "images/menu.svg"
                }else {
                    stackView.depth > 1 ? "images/backarrow.svg" : "images/menu.svg"
                }
            }

            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                } else {
                    drawer.open()
                }
            }
        }

        Label {
            anchors.centerIn: parent
            text: stackView.currentItem.title
            font.pixelSize: 20
        }
    }

    Drawer {
        id: drawer
        width: Math.min(root.width, root.height) / 3 * 2
        height: root.height

        Column {
            anchors.fill: parent

            // ItemDelegate {
            //     text: qsTr("Home")
            //     width: parent.width
            //     onClicked: {
            //         if(stackView.currentItem.pageName !== "home"){
            //             stackView.pop()
            //         }
            //         drawer.close()
            //     }
            // }

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
