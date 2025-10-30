import QtQuick
import QtQuick.Shapes

Item {
    Rectangle {
        anchors.fill: parent
        color: "#2c2c2c"



        Shape {

            ShapePath {
                strokeWidth: 5
                strokeColor: "green"

                startX: 20
                startY: 20

                PathLine { x: 450; y: 100 }
            }

            ShapePath {
                strokeWidth:5
                strokeColor: "red"
                fillColor: "blue"

                PathPolyline{
                    path: [
                        Qt.point(20, 120),
                        Qt.point(80, 250),
                        Qt.point(300, 170),
                        Qt.point(340, 90),
                        Qt.point(380, 220)
                    ]
                }
            }

            ShapePath {
                strokeWidth: 5
                strokeColor: "orange"

                startX: 20; startY: 300

                PathArc {
                    x: 180; y : 380
                    radiusX: 120; radiusY: 120
                }
            }

            ShapePath {
                strokeWidth: 5
                strokeColor: "lime"

                startX: 20; startY: 400

                PathQuad {
                    x: 180; y : 400
                    controlX: 60; controlY: 250
                }
            }

            ShapePath {
                strokeWidth: 5
                strokeColor: "purple"

                startX: 220; startY: 500

                PathCubic {
                    x: 380
                    y: 500
                    control1X: 260; control1Y: 250
                    control2X: 360; control2Y: 350
                }
            }

            ShapePath {
                strokeWidth: 5
                strokeColor: "red"

                startX: 420; startY: 300

                PathCurve { x:460; y:220}
                PathCurve {x:500; y:370}
                PathCurve {x:540; y: 270}
                PathCurve {x:580; y: 300}
            }
        }
    }
}

