import QtQuick

Item {
    Rectangle {
        anchors.fill: parent

        Canvas {
            width: 200; height: 200;

            onPaint: {
                var ctx = getContext("2d")

                var gradient = ctx.createLinearGradient(100, 0, 100, 200)
                gradient.addColorStop(0, "orange")
                gradient.addColorStop(0.7, "yellow")

                ctx.fillStyle = gradient
                ctx.fillRect(50, 50, 100 ,100)
            }
        }
    }
}
