import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import Machinekit.Controls 1.0
import Machinekit.HalRemote.Controls 1.0
import Machinekit.HalRemote 1.0
import Machinekit.Application 1.0
import QtQuick.Window 2.0


import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import QtQml 2.2
import Machinekit.Application.Controls 1.0
import Machinekit.Service 1.0
import Machinekit.HalRemote 1.0

Tab {
    id: vbcStatus
    anchors.top:parent.top
    title: qsTr("VBC Status")
    active: true

    property double basewidth: (parent.width / 3)
    property double ledSize: (parent.width / 10)
    property double fontSize: parent.width / 10
    property double ledspacing: basewidth
    property double zoom_add: 1
    property double textspacing_h: 0//height * 0.0075

    Flickable{
        flickableDirection: Flickable.VerticalFlick
        width:vbcTab.width;
        height:vbcTab.height;
        contentHeight: ledSize * 38;
        Item{// 當有GroupBox有兩組以上,需要Item來支援
            //***************************************************
            //
            //***************************************************
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: Screen.pixelDensity
            anchors.leftMargin: Screen.pixelDensity / 2

            ColumnLayout{
                GroupBox{
                    id: groupboxparameters
                    title: qsTr("Parameters")
                    anchors.top: parent.top
                    anchors.left: parent.left
                    //                        flat: true
                    Layout.fillWidth: true
                    ColumnLayout{
                        RowLayout{
                            height: ledSize
                            spacing: ledspacing
                            //***************************************************
                            // platen_angle (Deg)
                            //***************************************************

                            Text {
                                text: qsTr("Platen Angle")
                                Layout.preferredWidth: vbcStatus.width/2
                                font.pixelSize: fontSize * zoom_add
                            }
                            Text {//platen angle
                                id: platenAngleValue
                                text:  platenAnglePin.value.toFixed(2)
                                Layout.preferredWidth: vbcStatus.width/ 2
                                font.pixelSize: fontSize * zoom_add
                                HalPin {
                                    id: platenAnglePin
                                    name: "platen-angle"
                                    direction: HalPin.In
                                    type: HalPin.Float
                                }
                            }
                            Text{
                                text : " Deg  "
                                Layout.preferredWidth: vbcStatus.width/ 2
                                font.pixelSize: fontSize * zoom_add

                            }
                        }

                        RowLayout{
                            height: ledSize
                            spacing: ledspacing
                            //***************************************************
                            // platen_angle (Deg)
                            //***************************************************

                            Text {
                                text: qsTr("Tangential Vel")
                                Layout.preferredWidth: vbcStatus.width/2
                                font.pixelSize: fontSize * zoom_add
                            }
                            Text {//Tangential Vel
                                id: tangentialValue
                                text:  tangentialPin.value.toFixed(2)
                                Layout.preferredWidth: vbcStatus.width/ 2
                                font.pixelSize: fontSize * zoom_add
                                HalPin {
                                    id: tangentialPin
                                    name: "tangential-vel"
                                    direction: HalPin.In
                                    type: HalPin.Float
                                }
                            }
                            Text{
                                text : " ft/m  "
                                Layout.preferredWidth: vbcStatus.width/2
                                font.pixelSize: fontSize * zoom_add

                            }
                        }

                        RowLayout{
                            height: ledSize
                            spacing: ledspacing
                            //***************************************************
                            // BRUSH  (RPM)
                            //***************************************************

                            Text {
                                text: qsTr("BRUSH")
                                Layout.preferredWidth: vbcStatus.width/2
                                font.pixelSize: fontSize * zoom_add
                            }
                            Text {//BRUSH RPM
                                id: brushValue
                                text:  brushPin.value.toFixed(2)
                                Layout.preferredWidth: vbcStatus.width/ 2
                                font.pixelSize: fontSize * zoom_add
                                HalPin {
                                    id: brushPin
                                    name: "brush-rpm"
                                    direction: HalPin.In
                                    type: HalPin.Float
                                }
                            }
                            Text{
                                text : " RPM  "
                                Layout.preferredWidth: vbcStatus.width/2
                                font.pixelSize: fontSize * zoom_add

                            }
                        }

                        RowLayout{
                            height: ledSize
                            spacing: ledspacing
                            //***************************************************
                            // platen_angle (Deg)
                            //***************************************************

                            Text {
                                text: qsTr("PLATEN")
                                Layout.preferredWidth: vbcStatus.width/ 2
                                font.pixelSize: fontSize * zoom_add
                            }
                            Text {//platen RPM
                                id: platenRPMValue
                                text:  platenRPMPin.value.toFixed(2)
                                Layout.preferredWidth: vbcStatus.width/ 2
                                font.pixelSize: fontSize * zoom_add
                                HalPin {
                                    id: platenRPMPin
                                    name: "platen-rpm"
                                    direction: HalPin.In
                                    type: HalPin.Float
                                }
                            }
                            Text{
                                text : " RPM  "
                                Layout.preferredWidth: vbcStatus.width/ 2
                                font.pixelSize: fontSize * zoom_add

                            }
                        }

                        RowLayout{
                            height: ledSize
                            spacing: ledspacing
                            //***************************************************
                            // Env. Pressure (Pa)
                            //***************************************************

                            Text {
                                text: qsTr("Env. Pressure")
                                Layout.preferredWidth: vbcStatus.width/ 2
                                font.pixelSize: fontSize * zoom_add
                            }
                            Text {//Env. Pressure
                                id: envValue
                                text:  envPin.value.toFixed(2)
                                Layout.preferredWidth: vbcStatus.width/ 2
                                font.pixelSize: fontSize * zoom_add
                                HalPin {
                                    id: envPin
                                    name: "env"
                                    direction: HalPin.In
                                    type: HalPin.Float
                                }
                            }
                            Text{
                                text : " Pa  "
                                Layout.preferredWidth: vbcStatus.width/ 2
                                font.pixelSize: fontSize * zoom_add

                            }
                            ColumnLayout{

                                HalLed{
                                    Layout.preferredWidth : ledSize
                                    Layout.preferredHeight : ledSize
                                    name:"env-low"
                                }
                                Text {
                                    text: qsTr("LOW")
                                    font.pixelSize: fontSize
                                }
                            }
                        }

                        RowLayout{
                            height: ledSize
                            spacing: ledspacing
                            //***************************************************
                            // Pad Temp (C)
                            //***************************************************

                            Text {
                                text: qsTr("Pad Temp")
                                Layout.preferredWidth: vbcStatus.width/ 2
                                font.pixelSize: fontSize * zoom_add
                            }
                            Text {//Pad Temp
                                id: tempValue
                                text:  tempPin.value.toFixed(2)
                                Layout.preferredWidth: vbcStatus.width/ 2
                                font.pixelSize: fontSize * zoom_add
                                HalPin {
                                    id: tempPin
                                    name: "temp"
                                    direction: HalPin.In
                                    type: HalPin.Float
                                }
                            }
                            Text{
                                text : " (C)  "
                                Layout.preferredWidth: vbcStatus.width/ 2
                                font.pixelSize: fontSize * zoom_add

                            }
                            ColumnLayout{

                                HalLed{
                                    Layout.preferredWidth : ledSize
                                    Layout.preferredHeight : ledSize
                                    name:"temp-high"
                                }
                                Text {
                                    text: qsTr("HIGH")
                                    font.pixelSize: fontSize
                                }
                            }
                        }

                    }
                }//GroupBox(Psarameter)

                GroupBox{
                    id: groupbox1
                    title: qsTr("Platen Vacuum     ")
                    //                        flat: true
                    //***************************************************
                    // Platen Vacuum
                    //***************************************************
                    RowLayout{
                        //                height: ledSize
                        spacing: ledspacing
                        ColumnLayout{

                            HalLed{
                                Layout.preferredWidth : ledSize
                                Layout.preferredHeight : ledSize
                                name:"vacuum-on"
                            }
                            Text {
                                text: qsTr("ON")
                                font.pixelSize: fontSize
                            }
                        }
                        ColumnLayout{

                            HalLed{
                                Layout.preferredWidth : ledSize
                                Layout.preferredHeight : ledSize
                                name:"vacuum-off"
                            }
                            Text {
                                text: qsTr("OFF")
                                font.pixelSize: fontSize
                            }
                        }
                        ColumnLayout{

                            HalLed{
                                Layout.preferredWidth : ledSize
                                Layout.preferredHeight : ledSize
                                name:"vacuum-low"
                            }
                            Text {
                                text: qsTr("LOW")
                                font.pixelSize: fontSize
                            }
                        }
                        //***************************************************
                        // VACUUM (PSI)
                        //***************************************************
                        Text {//vacuum
                            id: vacuumValue
                            text: vacuumPin.value.toFixed(2) + " in/hg "
                            font.pixelSize: fontSize * zoom_add
                            x: basewidth - vacuumValue.width
                            y: vacuumValue.height * 0.5
                            horizontalAlignment: Text.AlignRight
                            HalPin {
                                id: vacuumPin
                                name: "vacuum"
                                direction: HalPin.In
                                type: HalPin.Float
                            }
                        }
                    }

                }//GroupBox(Vacuum)

                GroupBox{
                    id: groupboxcda
                    title: qsTr("CDA")

                    RowLayout{
                        height: ledSize
                        spacing: ledspacing

                        HalCheckBox{
                            name: "cda-on-vcp"
                            style: CheckBoxStyle {
                                indicator: Rectangle {
                                    implicitWidth: ledSize
                                    implicitHeight: ledSize
                                    radius: 3
                                    //                                            border.color: control.activeFocus ? "darkblue" : "gray"
                                    border.width: 1
                                    Rectangle {
                                        visible: control.checked
                                        color: "red"
                                        border.color: "#333"
                                        radius: 4
                                        anchors.margins: 4
                                        anchors.fill: parent
                                    }
                                }
                            }
                        }
                        ColumnLayout{

                            HalLed{
                                Layout.preferredWidth : ledSize
                                Layout.preferredHeight : ledSize
                                name:"cda-on"
                            }
                            Text {
                                text: qsTr("ON")
                                font.pixelSize: fontSize
                            }
                        }

                        ColumnLayout{

                            HalLed{
                                Layout.preferredWidth : ledSize
                                Layout.preferredHeight : ledSize
                                name:"cda-low"
                            }
                            Text {
                                text: qsTr("LOW")
                                font.pixelSize: fontSize
                            }
                        }
                        //***************************************************
                        // CDA (PSI)
                        //***************************************************
                        Text {//cda
                            id: cdaValue
                            text: cdaPin.value.toFixed(2) + " psi "
                            font.pixelSize: fontSize * zoom_add
                            x: basewidth - cdaValue.width
                            y: cdaValue.height * 0.5
                            horizontalAlignment: Text.AlignRight
                            HalPin {
                                id: cdaPin
                                name: "cda"
                                direction: HalPin.In
                                type: HalPin.Float
                            }
                        }
                    }
                }//GroupBox(CDA)

                GroupBox{
                    id: groupboxWZjoin
                    title: qsTr("WZ JOIN")
                    RowLayout{
                        height: ledSize
                        spacing: ledspacing

                        HalCheckBox{
                            name: "wz-join-vcp"
                            style: CheckBoxStyle {
                                indicator: Rectangle {
                                    implicitWidth: ledSize
                                    implicitHeight: ledSize
                                    radius: 3
                                    //                                            border.color: control.activeFocus ? "darkblue" : "gray"
                                    border.width: 1
                                    Rectangle {
                                        visible: control.checked
                                        color: "red"
                                        border.color: "#333"
                                        radius: 4
                                        anchors.margins: 4
                                        anchors.fill: parent
                                    }
                                }
                            }
                        }
                        ColumnLayout{

                            HalLed{
                                Layout.preferredWidth : ledSize
                                Layout.preferredHeight : ledSize
                                name:"wz-join"
                            }
                            Text {
                                text: qsTr("ON")
                                font.pixelSize: fontSize
                            }
                        }

                        ColumnLayout{

                            HalLed{
                                Layout.preferredWidth : ledSize
                                Layout.preferredHeight : ledSize
                                name:"wz-join-connect"
                            }
                            Text {
                                text: qsTr("connect")
                                font.pixelSize: fontSize
                            }
                        }
                    }
                }//GroupBox(WZ JOIN)

                GroupBox{
                    title: qsTr("Tool Change     ")
                    //                        flat: true
                    //***************************************************
                    // Input 00-31
                    //***************************************************
                    RowLayout{
                        height: ledSize
                        spacing: ledspacing

                        HalCheckBox{
                            name: "tool.change"
                            style: CheckBoxStyle {
                                indicator: Rectangle {
                                    implicitWidth: ledSize
                                    implicitHeight: ledSize
                                    radius: 3
                                    //                                            border.color: control.activeFocus ? "darkblue" : "gray"
                                    border.width: 1
                                    Rectangle {
                                        visible: control.checked
                                        color: "red"
                                        border.color: "#333"
                                        radius: 4
                                        anchors.margins: 4
                                        anchors.fill: parent
                                    }
                                }
                            }                            }

                        ColumnLayout{

                            HalLed{
                                Layout.preferredWidth : ledSize
                                Layout.preferredHeight : ledSize
                                name:"tool.release"
                            }
                            Text {
                                text: qsTr("REALEASE")
                                font.pixelSize: fontSize
                            }
                        }
                        ColumnLayout{

                            HalLed{
                                Layout.preferredWidth : ledSize
                                Layout.preferredHeight : ledSize
                                name:"tool.clamped"
                            }
                            Text {
                                text: qsTr("CLAMPED")
                                font.pixelSize: fontSize
                            }
                        }
                        ColumnLayout{

                            HalLed{
                                Layout.preferredWidth : ledSize
                                Layout.preferredHeight : ledSize
                                name:"tool.released"
                            }
                            Text {
                                text: qsTr("RELEASED")
                                font.pixelSize: fontSize
                            }
                        }

                    }
                }//GroupBox(Tool Change)
                GroupBox{
                    id: groupboxFLight
                    title: qsTr("Front Light     ")
                    //                        flat: true

                    RowLayout{
                        height: ledSize
                        spacing: ledspacing

                        HalCheckBox{
                            name: "front-light"
                            checked:true
                            style: CheckBoxStyle {
                                indicator: Rectangle {
                                    implicitWidth: ledSize
                                    implicitHeight: ledSize
                                    radius: 3
                                    //                                            border.color: control.activeFocus ? "darkblue" : "gray"
                                    border.width: 1
                                    Rectangle {
                                        visible: control.checked
                                        color: "red"
                                        border.color: "#333"
                                        radius: 4
                                        anchors.margins: 4
                                        anchors.fill: parent
                                    }
                                }
                            }
                        }

                    }
                }//GroupBox(Front Light)

                GroupBox{
                    title: qsTr("Panel Switch     ")
                    //                        flat: true
                    //***************************************************
                    // Platen Vacuum
                    //***************************************************
                    RowLayout{
                        //                height: ledSize
                        spacing: ledspacing
                        ColumnLayout{

                            HalLed{
                                Layout.preferredWidth : ledSize
                                Layout.preferredHeight : ledSize
                                name:"start"
                            }
                            Text {
                                text: qsTr("START")
                                font.pixelSize: fontSize
                            }
                        }
                        ColumnLayout{

                            HalLed{
                                Layout.preferredWidth : ledSize
                                Layout.preferredHeight : ledSize
                                name:"stop"
                            }
                            Text {
                                text: qsTr("STOP")
                                font.pixelSize: fontSize
                            }
                        }
                        ColumnLayout{

                            HalLed{
                                Layout.preferredWidth : ledSize
                                Layout.preferredHeight : ledSize
                                name:"door"
                            }
                            Text {
                                text: qsTr("DOOR")
                                font.pixelSize: fontSize
                            }
                        }
                        ColumnLayout{

                            HalLed{
                                Layout.preferredWidth : ledSize
                                Layout.preferredHeight : ledSize
                                name:"vacuum-state"
                            }
                            Text {
                                text: qsTr("VACCUM")
                                font.pixelSize: fontSize
                            }
                        }
                        ColumnLayout{

                            HalLed{
                                Layout.preferredWidth : ledSize
                                Layout.preferredHeight : ledSize
                                name:"static"
                            }
                            Text {
                                text: qsTr("STATIC")
                                font.pixelSize: fontSize
                            }
                        }
                        ColumnLayout{
                            HalLed{
                                Layout.preferredWidth : ledSize
                                Layout.preferredHeight : ledSize
                                name:"estop"
                            }
                            Text {
                                text: qsTr("ESTOP")
                                font.pixelSize: fontSize
                            }
                        }
                    }

                }// Panel Switch
            }
        }//Item{
    }// Flickable
}// Tab
