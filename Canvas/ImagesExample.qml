import QtQuick

Item {
    Rectangle {
        anchors.fill: parent
        color: 'darkgray'

        Canvas {
            width: 200; height: 200;

            onPaint: {
                var ctx = getContext("2d");

                ctx.drawImage("qrc:images/ball.png", 10, 10, 50, 50)

                ctx.save()
                ctx.strokeStyle = '#ff2a68';

                ctx.beginPath();
                ctx.moveTo(110, 10);
                ctx.lineTo(155, 10);
                ctx.lineTo(135, 55);
                ctx.closePath();
                ctx.clip();
                ctx.drawImage("qrc:images/ball.png", 100, 10, 50, 50)
                ctx.stroke()
                ctx.restore()
            }

            Component.onCompleted: {
                loadImage("qrc:images/ball.png")
            }
        }
    }
}
