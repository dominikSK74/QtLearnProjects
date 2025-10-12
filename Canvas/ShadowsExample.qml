import QtQuick

Item {
    Rectangle {
        anchors.fill: parent
        color: 'darkgray'

        Canvas {
            id: canvas
            anchors.fill: parent

            onPaint: {

                var ctx = getContext("2d");

                ctx.strokeStyle = "#333"
                ctx.fillRect(0,0, canvas.width, canvas.height);

                ctx.shadowColor = "#2ed5fa";
                ctx.shadowOffsetX = 2;
                ctx.shadowOffsetY = 2;
                ctx.shadowBlur = 10;

                ctx.font = 'bold 80px sans-serif';
                ctx.fillStyle = '#24d12e';
                ctx.fillText("Welcome!", 30, 180)
            }
        }
    }
}
