import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Window 2.0
import Machinekit.Service 1.0
import Machinekit.VideoView 1.0
import QtQuick.Layouts 1.1

Tab {
    id: barcodetab
    title: qsTr("Barcode")
    anchors.top:parent.top
    Button {
        id: dummyButton
        text: "12345678901234567890"
        visible: false
    }
    ColumnLayout{
        id:columnlayout
        anchors.top: barcodetab.top
        anchors.margins: Screen.pixelDensity * 10
        anchors.fill: parent
        onVisibleChanged: focusOnProgramTab()

        RowLayout {
            id:barcoderowlayout
            anchors.top: columnlayout.top
            Text{
                text: qsTr("Program Name")
                Layout.preferredWidth: barcodetab.width / 3
                Layout.preferredHeight: width /3
            }

            TextField {
                id: progTextField
                Layout.preferredWidth: barcodetab.width / 3
                Layout.preferredHeight: width /3
                onAccepted: {
                    if (text != "") {
                        console.log(progTextField.text)
                        scriptLauncher.launchScript("/usr/bin/python /home/artek/proj/vbc_gen2/scripts/PCSendZmqToVBC.py " + "brush_data.program"+"."+progTextField.text)
//                        scriptLauncher.launchScript("/usr/bin/python /home/artek/proj/vbc_gen2/scripts/PC_SendFileName.py "+ progTextField.text)
                        materiaTextField.forceActiveFocus()
                        materiaTextField.selectAll()
                    }
                }
            }
            Button {
                id: mybtn
                text: "press"
                Layout.preferredWidth: barcodetab.width / 3
                Layout.preferredHeight: width /3
                onClicked: {
                    console.log(progTextField.text)
//                    scriptLauncher.launchScript("/usr/bin/python /home/artek/proj/vbc_gen2/scripts/PC_SendFileName.py "+ progTextField.text)
                    scriptLauncher.launchScript("/usr/bin/python /home/artek/proj/vbc_gen2/scripts/PCSendZmqToVBC.py " + "brush_data.program"+"."+progTextField.text)
                }
            }
        }
        RowLayout {
            id:materiarowlayout
            Layout.fillHeight: true
            Layout.fillWidth: true
            anchors.top: barcoderowlayout.bottom

            Text{
                text: qsTr("Materia Number")
                Layout.preferredWidth: barcodetab.width / 3
                Layout.preferredHeight: width /3
            }

            TextField {
                id: materiaTextField
                Layout.preferredWidth: barcodetab.width / 3
                Layout.preferredHeight: width /3
                onAccepted: {
                    if (text != "") {
                        console.log(materiaTextField.text)
                        scriptLauncher.launchScript("/usr/bin/python /home/artek/proj/vbc_gen2/scripts/PCSendZmqToVBC.py " + "brush_data.material"+"."+materiaTextField.text)
                        lotTextField.forceActiveFocus()
                        lotTextField.selectAll()
                    }
                }
            }
            Button {
                text: "press"
                Layout.preferredWidth: barcodetab.width / 3
                Layout.preferredHeight: width /3
                onClicked: {
                    console.log(materiaTextField.text)
                    scriptLauncher.launchScript("/usr/bin/python /home/artek/proj/vbc_gen2/scripts/PCSendZmqToVBC.py " + "brush_data.material"+"."+materiaTextField.text)
                }
            }
        }
        RowLayout {
            id:lotrowlayout
            Layout.fillHeight: true
            Layout.fillWidth: true
            anchors.top: materiarowlayout.bottom

            Text{
                text: qsTr("Lot Number")
                Layout.preferredWidth: barcodetab.width / 3
                Layout.preferredHeight: width /3
            }

            TextField {
                id: lotTextField
                Layout.preferredWidth: barcodetab.width / 3
                Layout.preferredHeight: width /3
                onAccepted: {
                    if (text != "") {
                        console.log(lotTextField.text)
                        scriptLauncher.launchScript("/usr/bin/python /home/artek/proj/vbc_gen2/scripts/PCSendZmqToVBC.py " + "brush_data.lot"+"."+lotTextField.text)
                        dateTextField.forceActiveFocus()
                        dateTextField.selectAll()
                    }
                }
            }
            Button {
                id: dummy2Button
                text: "12345678901234567890"
                visible: false
            }
            Button {
                text: "press"
                Layout.preferredWidth: barcodetab.width / 3
                Layout.preferredHeight: width /3
                onClicked: {
                    console.log(lotTextField.text)
                    scriptLauncher.launchScript("/usr/bin/python /home/artek/proj/vbc_gen2/scripts/PCSendZmqToVBC.py " + "brush_data.lot"+"."+lotTextField.text)
                }
            }
        }
        RowLayout {
            id:daterowlayout
            Layout.fillHeight: true
            Layout.fillWidth: true
            anchors.top: lotrowlayout.bottom

            Text{
                text: qsTr("Date")
                Layout.preferredWidth: barcodetab.width / 3
                Layout.preferredHeight: width /3
            }

            TextField {
                id: dateTextField
                Layout.preferredWidth: barcodetab.width / 3
                Layout.preferredHeight: width /3
                onAccepted: {
                    if (text != "") {
                        console.log(dateTextField.text)
                        scriptLauncher.launchScript("/usr/bin/python /home/artek/proj/vbc_gen2/scripts/PCSendZmqToVBC.py " + "brush_data.date"+"."+dateTextField.text)
                        padTextField.forceActiveFocus()
                        padTextField.selectAll()
                    }
                }
            }
            Button {
                text: "press"
                Layout.preferredWidth: barcodetab.width / 3
                Layout.preferredHeight: width /3
                onClicked: {
                    console.log(dateTextField.text)
                    scriptLauncher.launchScript("/usr/bin/python /home/artek/proj/vbc_gen2/scripts/PCSendZmqToVBC.py " + "brush_data.date"+"."+dateTextField.text)
                }
            }
        }
        RowLayout {
            id:padrowlayout
            Layout.fillHeight: true
            Layout.fillWidth: true
            anchors.top: daterowlayout.bottom

            Text{
                text: qsTr("Pad Number")
                Layout.preferredWidth: barcodetab.width / 3
                Layout.preferredHeight: width /3
            }

            TextField {
                id: padTextField
                Layout.preferredWidth: barcodetab.width / 3
                Layout.preferredHeight: width /3
                onAccepted: {
                    if (text != "") {
                        console.log(padTextField.text)
                        scriptLauncher.launchScript("/usr/bin/python /home/artek/proj/vbc_gen2/scripts/PCSendZmqToVBC.py " + "brush_data.pad"+"."+padTextField.text)
                        progTextField.forceActiveFocus()
                        progTextField.selectAll()
                    }
                }
            }

            Button {
                text: "press"
                Layout.preferredWidth: barcodetab.width / 3
                Layout.preferredHeight: width /3
                onClicked: {
                    console.log(padTextField.text)
                    scriptLauncher.launchScript("/usr/bin/python /home/artek/proj/vbc_gen2/scripts/PCSendZmqToVBC.py " + "brush_data.pad"+"."+padTextField.text)
                }
            }
        }
    function focusOnProgramTab(){
        progTextField.forceActiveFocus()
        progTextField.selectAll()
    }
    }
}
