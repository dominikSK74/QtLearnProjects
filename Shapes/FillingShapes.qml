import QtQuick
import QtQuick.Shapes

Item {
    Rectangle {
        anchors.fill: parent
        color: "#2c2c2c"


        Shape {

            ShapePath {
                strokeWidth: 3
                strokeColor: "orange"
                fillColor: "red"

                // fillRule: ShapePath.oddEvenFill
                fillRule: ShapePath.WindingFill

                PathPolyline {
                    path: [
                        Qt.point(100,  20),
                        Qt.point(150, 180),
                        Qt.point( 20,  75),
                        Qt.point(180,  75),
                        Qt.point( 50, 180),
                        Qt.point(100,  20),
                    ]
                }
            }

            ShapePath {
                strokeWidth: 3
                strokeColor: "darkgray"

                // fillColor: "lightgreen"

                fillGradient: LinearGradient {
                    x1: 50; y1: 300
                    x2: 150; y2: 280

                    GradientStop { position: 0.0; color: "lightgreen" }
                    GradientStop { position: 0.7; color: "yellow" }
                    GradientStop { position: 1.0; color: "darkgreen" }
                }


                startX: 20; startY: 140

                PathLine {
                    x: 180
                    y: 140
                }

                PathArc {
                    x: 20
                    y: 140
                    radiusX: 80
                    radiusY: 80
                    direction: PathArc.Counterclockwise
                    useLargeArc: true
               }
            }
        }
    }
}
