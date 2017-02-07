import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import StateMachine 1.0
import QtQuick.Controls 1.4 as Controls1
import QtQuick.Extras 1.4

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    StateMachine {
        id: stateMachine
        running: true
    }

    RowLayout {
        width: 200
        height: 100
        anchors.left: parent.left
        Controls1.Switch {
            checked: stateMachine.connected
            onClicked: {
                stateMachine.submitEvent(stateMachine.connected ? "disconnect" : "connect")
            }
        }
        StatusIndicator {
            active: stateMachine.connected
            color: "green"
        }

    }



//    SwipeView {
//        id: swipeView
//        anchors.fill: parent
//        currentIndex: tabBar.currentIndex

//        Page1 {
//        }

//        Page {
//            Label {
//                text: qsTr("Second page")
//                anchors.centerIn: parent
//            }
//        }
//    }

//    footer: TabBar {
//        id: tabBar
//        currentIndex: swipeView.currentIndex
//        TabButton {
//            text: qsTr("First")
//        }
//        TabButton {
//            text: qsTr("Second")
//        }
//    }
}
