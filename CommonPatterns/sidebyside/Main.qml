import QtQuick
import QtQuick.Controls

ApplicationWindow {
    width: 340
    height: 540
    visible: true
    title: qsTr("Side-by-side")

    SwipeView {
        id: swipeView
        anchors.fill: parent

        Home {

        }

        Stats {

        }

        TotalStats {

        }
    }

    PageIndicator {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        currentIndex: swipeView.currentIndex
        count: swipeView.count
    }
}
