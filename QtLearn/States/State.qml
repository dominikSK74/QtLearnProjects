import QtQuick 2.15
import QtQuick.Layouts

Item {
    id: root
    anchors.fill: parent

    Rectangle {
        id: bg
        anchors.fill: parent
        color: 'darkgray'

        Rectangle {
            id: trafficLight
            width: 100
            height: 300
            color: 'gray'
            anchors.centerIn: parent

            property color redLightColor: 'red'
            property color greenLightColor: 'lime'
            property color blackLightColor: 'black'
            property color orangeLightColor: 'orange'

            state: 'stop'

            states: [
                State {
                    name: 'stop'
                    PropertyChanges {
                        target: redLight
                        color: trafficLight.redLightColor
                    }

                    PropertyChanges {
                        target: greenLight
                        color: trafficLight.blackLightColor
                    }

                    PropertyChanges {
                        target: orangeLight
                        color: trafficLight.blackLightColor
                    }
                },

                State {
                    name: 'ready'

                    PropertyChanges {
                        target: redLight
                        color: trafficLight.blackLightColor
                    }

                    PropertyChanges {
                        target: greenLight
                        color: trafficLight.blackLightColor
                    }

                    PropertyChanges {
                        target: orangeLight
                        color: trafficLight.orangeLightColor
                    }
                },

                State {
                    name: 'go'
                    PropertyChanges {
                        target: redLight
                        color: trafficLight.blackLightColor
                    }

                    PropertyChanges {
                        target: greenLight
                        color: trafficLight.greenLightColor
                    }

                    PropertyChanges {
                        target: orangeLight
                        color: trafficLight.blackLightColor
                    }
                }
            ]

            transitions: [
                Transition {
                    // from: "go"
                    // to: "stop"
                    from: '*'
                    to: '*'


                    ColorAnimation {
                        target: greenLight
                        properties: 'color'
                        duration: 200
                    }

                    ColorAnimation {
                        target: orangeLight
                        properties: 'color'
                        duration: 200
                    }

                    ColorAnimation {
                        target: redLight
                        properties: 'color'
                        duration: 200
                    }

                }
            ]

            ColumnLayout {
                spacing: 15
                anchors.fill: parent


                Rectangle {
                    id: redLight
                    width: 80
                    height: width
                    color: 'black'
                    radius: width / 2
                    Layout.alignment: Qt.AlignHCenter
                }

                Rectangle {
                    id: orangeLight
                    width: 80
                    height: width
                    color: 'black'
                    radius: width / 2
                    Layout.alignment: Qt.AlignHCenter
                }

                Rectangle {
                    id: greenLight
                    width: 80
                    height: width
                    color: 'black'
                    radius: width / 2
                    Layout.alignment:  Qt.AlignHCenter
                    border.color: Qt.lighter(color, 1.3)
                }
            }
        }

        Timer {
            id: readyTimer
            interval: 1500
            repeat: false
            onTriggered: trafficLight.state = 'go'
        }

        Timer {
            id: readyTimer2
            interval: 1500
            repeat: false
            onTriggered: trafficLight.state = 'stop'
        }

        Rectangle {
            id: button
            width: 200
            height: 65
            color: 'gray'
            radius: 15
            border.color: Qt.lighter(color, 1.5)

            Text {
                text: 'change state'
                color: 'white'
                font.pixelSize: 22
                anchors.centerIn: parent
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if (trafficLight.state == 'stop'){
                        trafficLight.state = 'ready'
                        readyTimer.start()
                    } else {
                        trafficLight.state = 'ready'
                        readyTimer2.start()
                    }
                }
            }
        }
    }
}
