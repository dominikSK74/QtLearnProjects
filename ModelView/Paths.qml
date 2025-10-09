import QtQuick

Item {
    anchors.fill: parent


    Rectangle {
        anchors.fill: parent
        color: "darkgray"
        id: root

        PathView {
            anchors.fill: parent

            model: 25
            delegate: flipCardDelegate

            path: Path {
                startX: 0
                startY: root.height * 0.8

                PathAttribute {name: "itemScale"; value: 0.4; }
                PathAttribute {name: "itemAngle"; value: -90.0; }
                PathAttribute {name: "itemZ"; value: 0 }


                PathQuad {
                    controlX: root.width * 0.25
                    controlY: root.height * 0.3

                    x: root.width * 0.5
                    y: root.height * 0.1
                }

                PathPercent { value: 0.5 }
                PathAttribute {name: "itemScale"; value: 1; }
                PathAttribute {name: "itemAngle"; value: 0.0; }
                PathAttribute {name: "itemZ"; value: 100 }

                PathQuad {
                    controlX: root.width * 0.75
                    controlY: root.height * 0.3

                    x: root.width
                    y: root.height * 0.8
                }

                PathPercent { value: 1 }
                PathAttribute {name: "itemScale"; value: 0.4; }
                PathAttribute {name: "itemAngle"; value: 90.0; }
                PathAttribute {name: "itemZ"; value: 0 }


            }

            pathItemCount: 8
            preferredHighlightBegin: 0.5
            preferredHighlightEnd: 0.5

            focus: true
            Keys.onLeftPressed: decrementCurrentIndex();
            Keys.onRightPressed: incrementCurrentIndex();
        }

        Component {
            id: flipCardDelegate

            Rectangle {
                id: wrapper

                required property int index
                property real rotX: PathView.itemAngle

                visible: PathView.onPath

                width: 64
                height: 64
                scale: PathView.itemScale
                z: PathView.itemZ

                antialiasing: true

                gradient: Gradient {
                    GradientStop { position: 0.0; color: "#2ed5fa" }
                    GradientStop { position: 1.0; color: "#2467ec" }
                }

                transform: Rotation {
                    axis { x:1; y:0; z:0 }
                    angle: wrapper.rotX
                    origin { x: 32; y: 32; }
                }

                Text {
                    anchors.fill: parent
                    font.pixelSize: 50
                    anchors.centerIn: parent
                    text: wrapper.index
                }
            }
        }
    }
}
