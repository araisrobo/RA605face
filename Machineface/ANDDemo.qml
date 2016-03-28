import QtQuick 2.0
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import Machinekit.Controls 1.0
import Machinekit.HalRemote.Controls 1.0
import Machinekit.HalRemote 1.0

Tab {
    // id: tab
    title: qsTr("ANDDemo")
    active: true
    HalApplicationWindow {
        id: main

        name: "anddemo"
        title: qsTr("AND-Demo")

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 10

            Item {
                Layout.fillHeight: true
            }
            HalButton {
                Layout.alignment: Layout.Center
                name: "button0"
                text: "Button 0"
                checkable: true
            }
            HalButton {
                Layout.alignment: Layout.Center
                name: "button1"
                text: "Button 1"
            }
            HalLed {
                Layout.alignment: Layout.Center
                name: "led"
            }
            Label {
                Layout.fillWidth: true
                text: "The buttons are connected using the 'and2' component in HAL.\n" +
                      "The LED represents the output of the 'and2' component."
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
            }
            HalButton {
                Layout.alignment: Layout.Center
                name: "out-btn"
                text: "out_31"
            }
            HalLed {
                Layout.alignment: Layout.Center
                name: "out-led"
            }

            Item {
                Layout.fillHeight: true
            }


            //Button One
            //using c++ to launch totem
            Rectangle   {
                id: testButton
                color: "red"
                radius: 80
                //   we use Math.round: to make sure that are math is not returning a double
                width: Math.round(parent.width / 1.03 )
                height: Math.round( parent.width / 10)
                anchors.centerIn: parent
            }
            MouseArea {
                id:testButtonMouseArea
                anchors.fill: testButton
                hoverEnabled: true
                onEntered: testButton.color = Qt.darker("red", 1.5)
                onExited: testButton.color = "red"
                onClicked: {
                    open.opacity = 1
                    //We call are C++ function in QML :)
                    scriptLauncher.launchScript()
                    //            We can also things with Qt.openUrlExternally()
                    //            example:
                    //            Qt.openUrlExternally("http://ubuntu.com")
                }
            }
            Text {
                id: clickaroo
                //we use qsTr for translations later on
                text: qsTr("Open Movie Player")
                anchors.centerIn: testButtonMouseArea
                color: "white"
                font.pixelSize:  Math.round(testButton.height / 1.02)
            }

            Text {
                id: open
                text: qsTr("Opening up Application Totem \n Opening up users fav browser ")
                font.pixelSize: 64
                opacity:  0
                anchors.centerIn:  parent

                Behavior    on opacity {
                    NumberAnimation {target: open ;  property: "scale";from:1 ; to: 0 ;  duration: 1200; easing.type: Easing.OutQuint }
                }
            }
        }
    }
}
