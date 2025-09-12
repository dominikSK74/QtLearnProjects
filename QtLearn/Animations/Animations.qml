import QtQuick 2.15

Rectangle {
    id: bg
    color: 'darkgray'
    anchors.fill: parent

    Box {
        color: 'red'
        text: qsTr("first")

        x: 20
        y: 200

        onClicked: {
            y: 200
            console.log('clicked2')
        }


        NumberAnimation on y {
            to: 20; duration: 4000
        }
    }

    Box {
        color: 'lime'
        text: qsTr("secound")

        x: 100
        y: 200

        onClicked: y = 20

        Behavior on y {
            NumberAnimation { duration: 3000 }
        }
    }

    Box {
        id: blueBox

        color: 'cyan'
        text: "Third"
        focus: true
        x: 170
        y: 200


        NumberAnimation {
            id: blueAnimation
            target: blueBox
            properties: "y"
            to: 20
            duration: 3000
            from: 200
        }

        Keys.onPressed: function(event) {
            switch(event.key){
                case Qt.Key_1:
                    blueAnimation.start()
                    break;

                case Qt.Key_2:
                    blueAnimation.stop()
                    break;

                case Qt.Key_3:
                    blueAnimation.resume() // ?? not working
                    break;

                case Qt.Key_4:
                    blueAnimation.restart()
                    break;
            }
        }
    }
}
