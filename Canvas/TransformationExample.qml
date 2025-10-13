import QtQuick

Item {
    Rectangle {
        anchors.fill: parent

        Canvas {
            id: canvas

            width: 240; height: 120

            onPaint: {
                var ctx = getContext("2d");
                ctx.lineWidth = 4;
                ctx.strokeStyle = "blue";

                ctx.translate(canvas.width /2, canvas.height /2);

                ctx.beginPath();
                ctx.rect(-20, -20, 40, 40);
                ctx.stroke();

                ctx.rotate(Math.PI/4);
                ctx.strokeStyle = "green";

                ctx.beginPath();
                ctx.rect(-20, -20, 40, 40);
                ctx.stroke();
            }
        }
    }
}
