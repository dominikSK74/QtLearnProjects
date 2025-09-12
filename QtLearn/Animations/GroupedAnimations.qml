import QtQuick 2.15

Rectangle {
    anchors.fill: parent
    color: 'darkgray'

    Rectangle {
        id: box
        color: 'green'
        width: 100
        height: 100

        MouseArea {
            anchors.fill: parent
            onClicked: myParallelAnimation.start()
        }
    }

    Rectangle {
        id: box2
        color: 'red'
        width: 100
        height: 100
        y: 300

        MouseArea {
            anchors.fill: parent
            onClicked: mySequentialAnimation.start()
        }
    }

    ParallelAnimation {
        id: myParallelAnimation

        NumberAnimation {
            target: box
            properties: 'y'
            to: 300
            from: 0
            duration: 3000
        }


        NumberAnimation {
            target: box
            property: "x"
            duration: 3000
            to: 500
            from: 0
        }
    }

    SequentialAnimation {
        id: mySequentialAnimation

        NumberAnimation {
            target: box2
            properties: "y"
            to: 0
            from: 300
            duration: 3000
        }

        NumberAnimation {
            target: box2
            properties: 'x'
            to: 500
            from: 0
            duration: 3000
        }
    }
}
