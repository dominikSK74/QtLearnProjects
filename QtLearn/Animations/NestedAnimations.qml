import QtQuick 2.15

Item {
    id: root
    anchors.fill: parent

    property int duration: 3000

    MouseArea {
        anchors.fill: parent
        onClicked: {
            ball.x = 10
            ball.y = root.height - ball.height
            ball.rotation = 0
        }
    }

    Rectangle {
        id: sky
        width: parent.width
        height: parent.height / 2
        color: 'cyan'
    }

    Rectangle {
        id: grass
        width: parent.width
        height: parent.height / 2
        color: 'lime'
        anchors.top: sky.bottom
    }

    Image {
        id: ball
        source: 'ball.png'
        width: 75
        height: 75
        fillMode: Image.PreserveAspectFit
        x: 10
        y: root.height - ball.height

        MouseArea {
            anchors.fill: parent
            onClicked: myAnimations.start()
        }
    }


    ParallelAnimation {
        id: myAnimations

        SequentialAnimation {

            NumberAnimation{
                target: ball
                properties: "y"
                to: 20
                duration: root.duration * 0.6
                easing.type: Easing.OutCirc
            }

            NumberAnimation{
                target: ball
                properties: "y"
                to: root.height - ball.height
                duration: root.duration * 0.4
                easing.type: Easing.OutBounce
            }
        }

        NumberAnimation {
            target: ball
            properties: "x"
            to: root.width - ball.width
            duration: root.duration
        }

        RotationAnimation {
            target: ball
            properties: "rotation"
            to: 720
            duration: root.duration
        }
    }

}
