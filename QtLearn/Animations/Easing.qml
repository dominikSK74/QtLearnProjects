import QtQuick 2.15
import QtQuick.Layouts

Rectangle {
    anchors.fill: parent
    color: 'darkgray'

    Text {
        id: myText
        color: 'black'
        text: 'Click 0 - 9 to show easing types'
        font.pixelSize: 40
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Rectangle {
        id: box
        color: 'lime'
        width: 100
        height: 100
        focus: true

        x: 500
        y: 300

        Keys.onPressed: function(event) {
            switch(event.key) {
                case Qt.Key_1:
                    myAnimation.easing.type = Easing.Linear
                    myText.text = 'Linear'
                    myAnimation.start()
                    break;

                case Qt.Key_2:
                    myAnimation.easing.type = Easing.InExpo
                    myText.text = 'InExpo'
                    myAnimation.start()
                    break;

                case Qt.Key_3:
                    myAnimation.easing.type = Easing.InOut
                    myText.text = 'OutExpo'
                    myAnimation.start()
                    break;

                case Qt.Key_4:
                    myAnimation.easing.type = Easing.InOutExpo
                    myText.text = 'InOutExpo'
                    myAnimation.start()
                    break;

                case Qt.Key_5:
                    myAnimation.easing.type = Easing.InOutCubic
                    myText.text = 'InOutCubic'
                    myAnimation.start()
                    break;

                case Qt.Key_6:
                    myAnimation.easing.type = Easing.SineCurve
                    myText.text = 'SineCurve'
                    myAnimation.start()
                    break;

                case Qt.Key_7:
                    myAnimation.easing.type = Easing.InOutCirc
                    myText.text = 'InOutCirc'
                    myAnimation.start()
                    break;

                case Qt.Key_8:
                    myAnimation.easing.type = Easing.InOutElastic
                    myText.text = 'InOutElastic'
                    myAnimation.start()
                    break;

                case Qt.Key_9:
                    myAnimation.easing.type = Easing.InOutBack
                    myText.text = 'InOutBack'
                    myAnimation.start()
                    break;

                case Qt.Key_0:
                    myAnimation.easing.type = Easing.InOutBounce
                    myText.text = 'InOutBounce'
                    myAnimation.start()
                    break;

            }
        }
    }


    NumberAnimation {
        id: myAnimation
        target: box
        properties: "x"
        to: 50
        duration: 800
        from: 500
        // easing.type: Easing.Linear
    }
}
