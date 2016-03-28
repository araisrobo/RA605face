import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Window 2.0
import Machinekit.Service 1.0
import Machinekit.VideoView 1.0
import QtQuick.Layouts 1.1
import QtQuick.LocalStorage 2.0

Tab {
    id: barcodetab
    title: ("Brush")
    anchors.top:parent.top
    visible: true
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

        RowLayout {
            id:barcoderowlayout
            anchors.top: columnlayout.top
            onVisibleChanged: focusOnBrushTab()

            Text{
                text: qsTr("Brush No.")
                Layout.preferredWidth: barcodetab.width / 3
            }

            TextField {
                id: brushNoTextField
                Layout.preferredWidth: barcodetab.width / 3
                onAccepted: {
                    if (text != "") {
                        barcoderowlayout.findDataBase()
                    }
                }
            }

            Button {
                id: addOne
                text: "Search / Add"
                Layout.preferredWidth: barcodetab.width / 3
                Layout.preferredHeight: barcodetab.width / 12
                onClicked: {
                    barcoderowlayout.findDataBase()
                }
            }
            //            Image {
            //                    anchors { top: parent.top; right: parent.right; margins: platformStyle.paddingMedium }
            //                    id: clearText
            //                    fillMode: Image.PreserveAspectFit
            //                    smooth: true; visible: clearable.text
            //                    source: "clear.svg"
            //                    height: parent.height - platformStyle.paddingMedium * 2
            //                    width: parent.height - platformStyle.paddingMedium * 2

            //                    MouseArea {
            //                        id: clear
            //                        anchors { horizontalCenter: parent.horizontalCenter; verticalCenter: parent.verticalCenter }
            //                        height: clearable.height; width: clearable.height
            //                        onClicked: {
            //                            clearable.text = ""
            //                            clearable.forceActiveFocus()
            //                        }
            //                    }
            //                }
            function findDataBase() {
                var db = LocalStorage.openDatabaseSync("vbc.db", "1.0", "The Example QML SQL!", 1000000);

                db.transaction(
                            function(tx) {
                                if ((brushNoTextField.text != "")){
                                    try{
                                        var data = tx.executeSql('SELECT tool_no, life, rated_life, rated_length, life_count, rated_life_count, tool_length FROM tools WHERE tool_no = ?',[brushNoTextField.text]);
                                        var rs = tx.executeSql('UPDATE settings SET tool_no = (?)',[brushNoTextField.text]);
                                        // do not delete, detect error use
                                        maxWorkTimeTextField.insert(0,data.rows.item(0).rated_life)
                                    } catch(err){
                                        console.log(brushNoTextField.text)
                                        var new_data = tx.executeSql("INSERT INTO tools (tool_no, description, life, rated_life, rated_length, rated_diameter, life_count, rated_life_count, tool_length) \
                                                    VALUES(?,?,?,?,?,?,?,?,?) ",[brushNoTextField.text,'',0,15000,114.0,999,0,10000,999.0]);
                                        var data = tx.executeSql('SELECT tool_no, life, rated_life, rated_length, life_count, rated_life_count, tool_length FROM tools WHERE tool_no = ?',[brushNoTextField.text]);
                                        var rs = tx.executeSql('UPDATE settings SET tool_no = (?), tool_length =(?)',[brushNoTextField.text,999.0]);
                                    }
                                    maxWorkTimeTextField.text=""
                                    maxWorkTimeTextField.insert(0,data.rows.item(0).rated_life)
                                    usedTimeTextField.text=""
                                    usedTimeTextField.text=data.rows.item(0).life
                                    minOfLengthTextField.text=""
                                    minOfLengthTextField.insert(0,data.rows.item(0).rated_length)
                                    toolLengthTextField.text=""
                                    toolLengthTextField.text=data.rows.item(0).tool_length
                                    maxCountTextField.text=""
                                    maxCountTextField.insert(0,data.rows.item(0).rated_life_count)
                                    countTextField.text=""
                                    countTextField.text=data.rows.item(0).life_count
//                                    scriptLauncher.launchScript("/usr/bin/python /home/artek/proj/vbc_gen2/scripts/PC_SendFileName.py prev_brush_diameter:"+data.rows.item(0).tool_length)
                                    scriptLauncher.launchScript("/usr/bin/python /home/artek/proj/vbc_gen2/scripts/PCSendZmqToVBC.py " + "brush_data.prev_tool_length"+"."+data.rows.item(0).tool_length)
                                    scriptLauncher.launchScript("/usr/bin/python /home/artek/proj/vbc_gen2/scripts/PCSendZmqToVBC.py " + "brush_data.min_tool_length"+"."+data.rows.item(0).rated_length)

                                }
                            }
                            )
            }
            function focusOnBrushTab(){
                brushNoTextField.forceActiveFocus()
                brushNoTextField.selectAll()
            }
        }
        RowLayout {
            id:maxWorkTimerowlayout
            Layout.fillHeight: true
            Layout.fillWidth: true
            anchors.top: barcoderowlayout.bottom

            Text{
                text: qsTr("maxWorkTime (min)")
                Layout.preferredWidth: barcodetab.width / 3
            }

            TextField {
                id: maxWorkTimeTextField
                Layout.preferredWidth: barcodetab.width / 3
                onAccepted: {
                    if (text != "") {
                        maxWorkTimerowlayout.updateRated_life()
                    }
                }

            }
            Button {
                text: "Update maxWorkTime"
                Layout.preferredWidth: barcodetab.width / 3
                Layout.preferredHeight: barcodetab.width / 12
                onClicked: {
                    maxWorkTimerowlayout.updateRated_life()
                }
            }

            function updateRated_life() {
                var db = LocalStorage.openDatabaseSync("vbc.db", "1.0", "The Example QML SQL!", 1000000);

                db.transaction(
                            function(tx) {
                                if ((brushNoTextField.text != "")){
                                        var rs = tx.executeSql('UPDATE tools SET rated_life = ? WHERE tool_no = ?',[maxWorkTimeTextField.text,brushNoTextField.text]);
                                }
                            }
                            )
            }
        }
        RowLayout {
            id:usedTimerowlayout
            Layout.fillHeight: true
            Layout.fillWidth: true
            anchors.top: maxWorkTimerowlayout.bottom

            Text{
                text: qsTr("Used Time (min)")
                Layout.preferredWidth: barcodetab.width / 3
            }

            Text {
                id: usedTimeTextField
                Layout.preferredWidth: barcodetab.width / 3

            }
            Text {
                id: dummytext1
                Layout.preferredWidth: barcodetab.width / 3
                Layout.preferredHeight: barcodetab.width / 12

            }
        }
        RowLayout {
            id:minOfLengthrowlayout
            Layout.fillHeight: true
            Layout.fillWidth: true
            anchors.top: usedTimerowlayout.bottom

            Text{
                text: qsTr("Min of Length (mm)")
                Layout.preferredWidth: barcodetab.width / 3
            }

            TextField {
                id: minOfLengthTextField
                Layout.preferredWidth: barcodetab.width / 3
                onAccepted: {
                    if (text != "") {
                        minOfLengthrowlayout.updateRated_length()
                        scriptLauncher.launchScript("/usr/bin/python /home/artek/proj/vbc_gen2/scripts/PCSendZmqToVBC.py " + "brush_data.min_tool_length"+"."+minOfLengthTextField.text)
                    }
                }
            }
            Button {
                text: "Update minOfLength"
                Layout.preferredWidth: barcodetab.width / 3
                Layout.preferredHeight: barcodetab.width / 12
                onClicked: {
                    minOfLengthrowlayout.updateRated_length()
                    scriptLauncher.launchScript("/usr/bin/python /home/artek/proj/vbc_gen2/scripts/PCSendZmqToVBC.py " + "brush_data.min_tool_length"+"."+minOfLengthTextField.text)
                }
            }

            function updateRated_length() {
                var db = LocalStorage.openDatabaseSync("vbc.db", "1.0", "The Example QML SQL!", 1000000);

                db.transaction(
                            function(tx) {
                                if ((brushNoTextField.text != "")){
                                        var rs = tx.executeSql('UPDATE tools SET rated_length = ? WHERE tool_no = ?',[minOfLengthTextField.text,brushNoTextField.text]);
                                }
                            }
                            )
            }
        }
        RowLayout {
            id:toolLengthrowlayout
            Layout.fillHeight: true
            Layout.fillWidth: true
            anchors.top: minOfLengthrowlayout.bottom

            Text{
                text: qsTr("Tool Length (mm)")
                Layout.preferredWidth: barcodetab.width / 3
            }

            Text {
                id: toolLengthTextField
                Layout.preferredWidth: barcodetab.width / 3
            }
            Text {
                id: dummytext
                Layout.preferredWidth: barcodetab.width / 3
                Layout.preferredHeight: barcodetab.width / 12

            }
        }
        RowLayout {
            id:maxCountrowlayout
            Layout.fillHeight: true
            Layout.fillWidth: true
            anchors.top: toolLengthrowlayout.bottom

            Text{
                text: qsTr("maxCount")
                Layout.preferredWidth: barcodetab.width / 3
            }

            TextField {
                id: maxCountTextField
                Layout.preferredWidth: barcodetab.width / 3
                onAccepted: {
                    if (text != "") {
                        maxCountrowlayout.updateRated_life_count()
                    }
                }
            }

            Button {
                text: "Update maxCount"
                Layout.preferredWidth: barcodetab.width / 3
                Layout.preferredHeight: barcodetab.width / 12
                onClicked: {
                    maxCountrowlayout.updateRated_life_count()
                }
            }
            function updateRated_life_count() {
                var db = LocalStorage.openDatabaseSync("vbc.db", "1.0", "The Example QML SQL!", 1000000);

                db.transaction(
                            function(tx) {
                                if ((brushNoTextField.text != "")){
                                        var rs = tx.executeSql('UPDATE tools SET rated_life_count = ? WHERE tool_no = ?',[maxCountTextField.text,brushNoTextField.text]);
                                }
                            }
                            )
            }
        }
        RowLayout {
            id:countrowlayout
            Layout.fillHeight: true
            Layout.fillWidth: true
            anchors.top: maxCountrowlayout.bottom

            Text{
                text: qsTr("Count")
                Layout.preferredWidth: barcodetab.width / 3
            }

            Text {
                id: countTextField
                Layout.preferredWidth: barcodetab.width / 3
            }

            Text {
                text: ""
                Layout.preferredWidth: barcodetab.width / 3
                Layout.preferredHeight: barcodetab.width / 12

            }
        }
        function find_init_tool(){
            var db = LocalStorage.openDatabaseSync("vbc.db", "1.0", "The Example QML SQL!", 1000000);

            db.transaction(
                        function(tx) {
                            if ((brushNoTextField.text === "")){
                                var rs = tx.executeSql('SELECT * FROM settings');

                                var data = tx.executeSql('SELECT tool_no, life, rated_life, rated_length, life_count, rated_life_count, tool_length FROM tools WHERE tool_no = ?',[rs.rows.item(0).tool_no]);
                                brushNoTextField.insert(0,data.rows.item(0).tool_no)
                                maxWorkTimeTextField.text=""
                                maxWorkTimeTextField.insert(0,data.rows.item(0).rated_life)
                                usedTimeTextField.text=""
                                usedTimeTextField.text=data.rows.item(0).life
                                minOfLengthTextField.text=""
                                minOfLengthTextField.insert(0,data.rows.item(0).rated_length)
                                toolLengthTextField.text=""
                                toolLengthTextField.text=data.rows.item(0).tool_length
                                maxCountTextField.text=""
                                maxCountTextField.insert(0,data.rows.item(0).rated_life_count)
                                countTextField.text=""
                                countTextField.text=data.rows.item(0).life_count
                                scriptLauncher.launchScript("/usr/bin/python /home/artek/proj/vbc_gen2/scripts/PCSendZmqToVBC.py " + "brush_data.brush"+"."+data.rows.item(0).tool_no)
                                scriptLauncher.launchScript("/usr/bin/python /home/artek/proj/vbc_gen2/scripts/PCSendZmqToVBC.py " + "brush_data.prev_tool_length"+"."+data.rows.item(0).tool_length)
                                scriptLauncher.launchScript("/usr/bin/python /home/artek/proj/vbc_gen2/scripts/PCSendZmqToVBC.py " + "brush_data.min_tool_length"+"."+data.rows.item(0).rated_length)
//                                scriptLauncher.launchScript("/usr/bin/python /home/artek/proj/vbc_gen2/scripts/PC_SendFileName.py prev_brush_diameter:"+data.rows.item(0).tool_length)

                            }
                        }
                        )
        }
        Button {
            id: measure
            text: "Measure Brush Diameter"
            Layout.preferredWidth: barcodetab.width / 3
            Layout.preferredHeight: barcodetab.width / 12
            onClicked: {
//                scriptLauncher.launchScript("/usr/bin/python /home/artek/proj/vbc_gen2/scripts/PC_SendFileName.py scan_spindles_diameter")
                scriptLauncher.launchScript("/usr/bin/python /home/artek/proj/vbc_gen2/scripts/PCSendZmqToVBC.py " + "brush_data.scan"+".")
            }
        }
        Component.onCompleted: find_init_tool()
    }
}



