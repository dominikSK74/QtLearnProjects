import QtQuick

Rectangle {
    id: root
    width: parent.width
    height: parent.height
    color: 'darkgray'
    focus: true


    Rectangle {
        id: green
        width: 250
        height: 250
        color: 'lime'

        NumberAnimation on opacity{
            to: 0
            duration: 3000
            running:  root.running
        }

        NumberAnimation on opacity {
            to: 1
            duration: 3000
            running: root.r2        }
    }

    // Keys.onDownPressed: green.y += 10
    // Keys.onUpPressed: green.y -= 10
    // Keys.onLeftPressed: green.x -= 10
    // Keys.onRightPressed: green.x += 10

    property bool running: false
    property bool r2: false

    Keys.onPressed: function(event) {
        switch(event.key) {
            case Qt.Key_W:
                green.y -= 10
                break;

            case Qt.Key_A:
                green.x -= 10
                break;

            case Qt.Key_S:
                green.y += 10
                break;

            case Qt.Key_D:
                green.x += 10
                break;

            case Qt.Key_Plus:
                green.scale += 0.2
                break;

            case Qt.Key_Minus:
                green.scale -= 0.2
                break;

            case Qt.Key_T:
                root.running = true
                root.r2 = false
                break;
            case Qt.Key_F:
                root.r2 = true
                root.running = false
                break;
        }
    }

}

