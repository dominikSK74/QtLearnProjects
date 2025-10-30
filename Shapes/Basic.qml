import QtQuick
import QtQuick.Shapes

Item {
    Rectangle {
        anchors.fill: parent
        color: "#2c2c2c"


        Shape {
            anchors.centerIn: parent


            ShapePath {
                strokeWidth: 3
                strokeColor: "red"
                fillColor: "yellow"

                startX: -40; startY: 200

                //Circle
                PathArc {x: 40; y: 200; radiusX: 200; radiusY: 200; useLargeArc: true}
                PathLine {x:40; y: 120}
                PathArc {x: -40; y: 120; radiusX: 120; radiusY: 120; useLargeArc: true; direction: PathArc.Counterclockwise}
                PathLine {x:-40; y: 200}

                //dots
                PathMove { x: -20; y: 80 }
                PathArc { x: 20; y: 80; radiusX: 20; radiusY: 20; useLargeArc: true }
                PathArc { x: -20; y: 80; radiusX: 20; radiusY: 20; useLargeArc: true }

                PathMove { x: -20; y: 130 }
                PathArc { x: 20; y: 130; radiusX: 20; radiusY: 20; useLargeArc: true }
                PathArc { x: -20; y: 130; radiusX: 20; radiusY: 20; useLargeArc: true }

                PathMove { x: -20; y: 180 }
                PathArc { x: 20; y: 180; radiusX: 20; radiusY: 20; useLargeArc: true }
                PathArc { x: -20; y: 180; radiusX: 20; radiusY: 20; useLargeArc: true }

                PathMove { x: -20; y: 230 }
                PathArc { x: 20; y: 230; radiusX: 20; radiusY: 20; useLargeArc: true }
                PathArc { x: -20; y: 230; radiusX: 20; radiusY: 20; useLargeArc: true }
            }
        }
    }
}
