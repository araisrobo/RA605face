import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import Machinekit.Controls 1.0
import Machinekit.HalRemote.Controls 1.0
import Machinekit.HalRemote 1.0
import Machinekit.Application 1.0
import QtQuick.Window 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.LocalStorage 2.0

Tab {
    id: vbcConfigs
    anchors.top:parent.top
    title: qsTr("VBC Configs")
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
        contentHeight: vbcTab.height*1.0;
        Item{// 當有GroupBox有兩組以上,需要Item來支援
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: Screen.pixelDensity
            anchors.leftMargin: Screen.pixelDensity / 2
            ColumnLayout{
                GroupBox{
                    title: qsTr("VBC Manual Switch     ")
                    ColumnLayout{
                        RowLayout{
                            height: ledSize
                            spacing: ledspacing

                            HalCheckBox{
                                name: "laser-on-vcp"
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
                            Text {
                                text: qsTr("Laser")
                                font.pixelSize: fontSize
                            }
                        }// RowLayout
                        RowLayout{
                            height: ledSize
                            spacing: ledspacing

                            HalCheckBox{
                                name: "static-on-vcp"
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
                            Text {
                                text: qsTr("Static Nozzle")
                                font.pixelSize: fontSize
                            }
                        }// RowLayout
                        RowLayout{
                            height: ledSize
                            spacing: ledspacing

                            HalCheckBox{
                                name: "sigpod-on-vcp"
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
                            Text {
                                text: qsTr("SigPOD")
                                font.pixelSize: fontSize
                            }
                        }// RowLayout
                    }// ColumnLayout
                }// GroupBox
                GroupBox{
                    title: qsTr("VBC Process Settings     ")
                    flat: true
                    ColumnLayout{
                        id:vbclayout
                        RowLayout{
                            height: ledSize
                            spacing: ledspacing
                            Text {
                                text: qsTr("Platen -45 Z (Machine)")
                                font.pixelSize: fontSize
                                Layout.preferredWidth: vbcTab.width / 2
                                Layout.preferredHeight: ledSize
                            }
                            TextField {
                                id: platen45TextField
                                onAccepted: {
                                    if (text != "") {
                                        vbclayout.updateDB("platen_45z",platen45TextField.text)
                                    }
                                }
                                Timer{
                                    interval: 1000; running: true; repeat: true
                                    onTriggered: platen45zPin.value = Number(platen45TextField.text)
                                }
                                HalPin {
                                    id: platen45zPin
                                    name: "platen-45z"
                                    direction: HalPin.Out
                                    type: HalPin.Float
                                }
                            }

                        }// RowLayout
                        RowLayout{
                            height: ledSize
                            spacing: ledspacing
                            Text {
                                text: qsTr("Vacuum Upper Limit(inHg)")
                                font.pixelSize: fontSize
                                Layout.preferredWidth: vbcTab.width / 2
                                Layout.preferredHeight: ledSize
                            }
                            TextField {
                                id: vacuumupperTextField
                                onAccepted: {
                                    if (text != "") {
                                        vbclayout.updateDB("vacuum_upper",vacuumupperTextField.text)
                                        vacuumupperPin.value = Number(vacuumupperTextField.text)
                                    }
                                }
                                Timer{
                                    interval: 1000; running: true; repeat: true
                                    onTriggered: vacuumupperPin.value = Number(vacuumupperTextField.text)
                                }
                                HalPin {
                                    id: vacuumupperPin
                                    name: "vacuum-upper"
                                    direction: HalPin.Out
                                    type: HalPin.Float
                                }
                            }
                        }// RowLayout
                        RowLayout{
                            height: ledSize
                            spacing: ledspacing
                            Text {
                                text: qsTr("CDA Lower Limit (psi)")
                                font.pixelSize: fontSize
                                Layout.preferredWidth: vbcTab.width / 2
                                Layout.preferredHeight: ledSize
                            }
                            TextField {
                                id: cda_lowerTextField
                                onAccepted: {
                                    if (text != "") {
                                        vbclayout.updateDB("cda_lower",cda_lowerTextField.text)
                                        cdalowerPin.value = Number(cda_lowerTextField.text)
                                    }
                                }
                                Timer{
                                    interval: 1000; running: true; repeat: true
                                    onTriggered: cdalowerPin.value = Number(cda_lowerTextField.text)
                                }
                                HalPin {
                                    id: cdalowerPin
                                    name: "cda-lower"
                                    direction: HalPin.Out
                                    type: HalPin.Float
                                }

                            }
                        }// RowLayout
                        RowLayout{
                            height: ledSize
                            spacing: ledspacing
                            Text {
                                text: qsTr("Temperature Upper Limit (C)")
                                font.pixelSize: fontSize
                                Layout.preferredWidth: vbcTab.width / 2
                                Layout.preferredHeight: ledSize
                            }
                            TextField {
                                id: temp_upperTextField
                                onAccepted: {
                                    if (text != "") {
                                        vbclayout.updateDB("temp_upper",temp_upperTextField.text)
                                        temp_upperPin.value = Number(temp_upperTextField.text)
                                    }
                                }
                                Timer{
                                    interval: 1000; running: true; repeat: true
                                    onTriggered: temp_upperPin.value = Number(temp_upperTextField.text)
                                }
                                HalPin {
                                    id: temp_upperPin
                                    name: "temp-upper"
                                    direction: HalPin.Out
                                    type: HalPin.Float
                                }

                            }
                        }// RowLayout
                        RowLayout{
                            height: ledSize
                            spacing: ledspacing
                            Text {
                                text: qsTr("Env. Lower Limit (Pa)")
                                font.pixelSize: fontSize
                                Layout.preferredWidth: vbcTab.width / 2
                                Layout.preferredHeight: ledSize
                            }
                            TextField {
                                id: env_lowerTextField
                                onAccepted: {
                                    if (text != "") {
                                        vbclayout.updateDB("env_lower",env_lowerTextField.text)
                                        env_lowerPin.value = Number(env_lowerTextField.text)
                                    }
                                }
                                Timer{
                                    interval: 1000; running: true; repeat: true
                                    onTriggered: env_lowerPin.value = Number(env_lowerTextField.text)
                                }
                                HalPin {
                                    id: env_lowerPin
                                    name: "env-lower"
                                    direction: HalPin.Out
                                    type: HalPin.Float

                                }
                            }
                        }// RowLayout
                        RowLayout{
                            height: ledSize
                            spacing: ledspacing
                            Text {
                                text: qsTr("Brush To Pad (inch)")
                                font.pixelSize: fontSize
                                Layout.preferredWidth: vbcTab.width / 2
                                Layout.preferredHeight: ledSize
                            }
                            TextField {
                                id: brush_to_padTextField
                                onAccepted: {
                                    if (text != "") {
                                        vbclayout.updateDB("brush_to_pad",brush_to_padTextField.text)
                                        brush_to_padPin.value = Number(brush_to_padTextField.text)
                                    }
                                }
                                Timer{
                                    interval: 1000; running: true; repeat: true
                                    onTriggered: brush_to_padPin.value = Number(brush_to_padTextField.text)
                                }
                                HalPin {
                                    id: brush_to_padPin
                                    name: "brush-to-pad"
                                    direction: HalPin.Out
                                    type: HalPin.Float

                                }
                            }
                        }// RowLayout
                        RowLayout{
                            height: ledSize
                            spacing: ledspacing
                            Text {
                                text: qsTr("Clean Depth (inch)")
                                font.pixelSize: fontSize
                                Layout.preferredWidth: vbcTab.width / 2
                                Layout.preferredHeight: ledSize
                            }
                            TextField {
                                id: clean_depthTextField
                                onAccepted: {
                                    if (text != "") {
                                        vbclayout.updateDB("clean_depth",clean_depthTextField.text)
                                        clean_depthPin.value = Number(clean_depthTextField.text)
                                    }
                                }
                                Timer{
                                    interval: 1000; running: true; repeat: true
                                    onTriggered: clean_depthPin.value = Number(clean_depthTextField.text)
                                }
                                HalPin {
                                    id: clean_depthPin
                                    name: "clean-depth"
                                    direction: HalPin.Out
                                    type: HalPin.Float

                                }
                            }
                        }// RowLayout
                        RowLayout{
                            height: ledSize
                            spacing: ledspacing
                            Text {
                                text: qsTr("Brush Center W(Machine)")
                                font.pixelSize: fontSize
                                Layout.preferredWidth: vbcTab.width / 2
                                Layout.preferredHeight: ledSize
                            }
                            TextField {
                                id: brush_centerTextField
                                onAccepted: {
                                    if (text != "") {
                                        vbclayout.updateDB("brush_center",brush_centerTextField.text)
                                        brush_centerPin.value = Number(brush_centerTextField.text)
                                    }
                                }
                                Timer{
                                    interval: 1000; running: true; repeat: true
                                    onTriggered: brush_centerPin.value = Number(brush_centerTextField.text)
                                }
                                HalPin {
                                    id: brush_centerPin
                                    name: "brush-to-center"
                                    direction: HalPin.Out
                                    type: HalPin.Float

                                }
                            }
                        }// RowLayout
                        RowLayout{
                            height: ledSize
                            spacing: ledspacing
                            Text {
                                text: qsTr("Brush Diameter (mm)")
                                font.pixelSize: fontSize
                                Layout.preferredWidth: vbcTab.width / 2
                                Layout.preferredHeight: ledSize
                            }

                            Text {
                                id: brush_diameterTextField
                                text: bptickPin.value.toFixed(2)
                                HalPin {
                                    id: bptickPin
                                    name: "brushdiameter"
                                    direction: HalPin.In
                                    type: HalPin.Float
                                }

                            }
                        }// RowLayout
                        RowLayout{
                            height: ledSize
                            spacing: ledspacing
                            Text {
                                text: qsTr("Brush Diameter Tolerance (mm)")
                                font.pixelSize: fontSize
                                Layout.preferredWidth: vbcTab.width / 2
                                Layout.preferredHeight: ledSize
                            }
                            TextField {
                                id: brush_tolerenceTextField
                                onAccepted: {
                                    if (text != "") {
                                        vbclayout.updateDB("brush_tolerence",brush_tolerenceTextField.text)
                                        brush_tolerencePin.value = Number(brush_tolerenceTextField.text)
                                    }
                                }
                                Timer{
                                    interval: 1000; running: true; repeat: true
                                    onTriggered: brush_tolerencePin.value = Number(brush_tolerenceTextField.text)
                                }
                                HalPin {
                                    id: brush_tolerencePin
                                    name: "brush-tolerence"
                                    direction: HalPin.Out
                                    type: HalPin.Float

                                }
                            }
                        }// RowLayout
                        RowLayout{
                            height: ledSize
                            spacing: ledspacing
                            Text {
                                text: qsTr("Laser connect position (absolute)")
                                font.pixelSize: fontSize
                                Layout.preferredWidth: vbcTab.width / 2
                                Layout.preferredHeight: ledSize
                            }
                            TextField {
                                id: connect_positionTextField
                                onAccepted: {
                                    if (text != "") {
                                        vbclayout.updateDB("connect_position",connect_positionTextField.text)
                                        connect_positionPin.value = Number(connect_positionTextField.text)
                                    }
                                }
                                Timer{
                                    interval: 1000; running: true; repeat: true
                                    onTriggered: connect_positionPin.value = Number(connect_positionTextField.text)
                                }
                                HalPin {
                                    id: connect_positionPin
                                    name: "connect-position"
                                    direction: HalPin.Out
                                    type: HalPin.Float

                                }
                            }
                        }// RowLayout
                        RowLayout{
                            height: ledSize
                            spacing: ledspacing
                            Text {
                                text: qsTr("Max Platen RPM Radius (inch)")
                                font.pixelSize: fontSize
                                Layout.preferredWidth: vbcTab.width / 2
                                Layout.preferredHeight: ledSize
                            }
                            TextField {
                                id: spindle_css_csrTextField
                                onAccepted: {
                                    if (text != "") {
                                        vbclayout.updateDB("spindle_css_csr",spindle_css_csrTextField.text)
                                        spindle_css_csrPin.value = Number(spindle_css_csrTextField.text)
                                    }
                                }
                                Timer{
                                    interval: 1000; running: true; repeat: true
                                    onTriggered: spindle_css_csrPin.value = Number(spindle_css_csrTextField.text)
                                }
                                HalPin {
                                    id: spindle_css_csrPin
                                    name: "spindle-css-csr"
                                    direction: HalPin.Out
                                    type: HalPin.Float

                                }
                            }
                        }// RowLayout
                        function updateDB(name,value){
                            var db = LocalStorage.openDatabaseSync("vbc.db", "1.0", "The Example QML SQL!", 1000000);

                            db.transaction(
                                        function(tx) {
                                            var r =''
                                            r += 'UPDATE process_setting SET ' + name + ' =(?)'
                                            tx.executeSql(r,[value]);
                                        }
                                        )
                        }

                        function find_init_tool(){
                            var db = LocalStorage.openDatabaseSync("vbc.db", "1.0", "The Example QML SQL!", 1000000);

                            db.transaction(
                                        function(tx) {
                                            if ((platen45TextField.text === "")){
                                                var data = tx.executeSql('SELECT * FROM process_setting');
                                                platen45TextField.text=""
                                                platen45TextField.insert(0,data.rows.item(0).platen_45z)
                                                vacuumupperTextField.text=""
                                                vacuumupperTextField.insert(0,data.rows.item(0).vacuum_upper)
                                                cda_lowerTextField.text=""
                                                cda_lowerTextField.insert(0,data.rows.item(0).cda_lower)
                                                temp_upperTextField.text=""
                                                temp_upperTextField.insert(0,data.rows.item(0).temp_upper)
                                                env_lowerTextField.text=""
                                                env_lowerTextField.insert(0,data.rows.item(0).env_lower)
                                                brush_to_padTextField.text=""
                                                brush_to_padTextField.insert(0,data.rows.item(0).brush_to_pad)
                                                clean_depthTextField.text=""
                                                clean_depthTextField.insert(0,data.rows.item(0).clean_depth)
                                                brush_centerTextField.text=""
                                                brush_centerTextField.insert(0,data.rows.item(0).brush_center)
                                                //                                                brush_diameterTextField.text=""
                                                //                                                brush_diameterTextField.insert(0,data.rows.item(0).brush_diameter)
                                                brush_tolerenceTextField.text=""
                                                brush_tolerenceTextField.insert(0,data.rows.item(0).brush_tolerence)
                                                spindle_css_csrTextField.text=""
                                                spindle_css_csrTextField.insert(0,data.rows.item(0).spindle_css_csr)
                                                connect_positionTextField.text=""
                                                connect_positionTextField.insert(0,data.rows.item(0).connect_position)

                                            }
                                        }
                                        )
                        }
                        Component.onCompleted: find_init_tool()
                    }//  ColumnLayout
                }// GroupBox
            } //  ColumnLayout
        } // Item
    } // Flickable
} // Tab
