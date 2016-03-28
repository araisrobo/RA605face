import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Window 2.0
import Machinekit.Service 1.0
import Machinekit.VideoView 1.0
import QtQuick.Layouts 1.1
import QtQuick.LocalStorage 2.0

Tab {
    id: userChange
    title: qsTr("USER")

    Rectangle {
        height: 600
        width: 600

        MyRadioGroup {
            id: radioGroup1
        }

        Column {
            anchors.fill: parent

            MyRadioButton {
                id:op
                anchors { left: parent.left; right: parent.right }
                text: "Operator"
                radioGroup: radioGroup1
                height: 100
            }

            MyRadioButton {
                anchors { left: parent.left; right: parent.right }
                text: "Engineer"
                radioGroup: radioGroup1
                height: 100
            }

            MyRadioButton {
                anchors { left: parent.left; right: parent.right }
                text: "Supervisor"
                radioGroup: radioGroup1
                height: 100
            }
            Text{
                text: qsTr("Password")
                anchors.left: parent.left
                anchors.right: parent.right

            }

            TextField {
                id: passwordTextField
                anchors.left: parent.left
                anchors.right: parent.right
                echoMode: TextInput.Password
//                onAccepted: {
//                    console.log(op.sideButton.text)
//                    console.log(passwordTextField.text)
//                }
            }

        }
    }


    function disable_tab() {
        // which page you want to diasble
//        signalTab.enabled = false
//        signalTab.active = false
//        vbc.enable = false
    }
    Component.onCompleted: disable_tab()
}
