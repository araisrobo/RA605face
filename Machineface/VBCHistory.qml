import QtQuick.Window 2.0
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1
import QtQuick.LocalStorage 2.0
import QtQuick 2.2
Tab {
    title: qsTr("History")
    Rectangle {
        width: 360;
        height: 300;
        color: "#EEEEEE";

        Component {
            id: phoneModel;
            ListModel {
                ListElement{
                    index_no: "";
                    Brush_no: "";
                    life_count: "";
                    brush_diameter: "";
                    program: "";
                    lotID: "";
                    start_time: "";
                    end_time: "";
                    process_time: "";
                    pad_thick: "";
                    temp_m: "";
                    w_pos: "";
                    platen_angle_m: "";
                    brush_m: "";
                    platen_m: "";
                    env_m: "";
                    vacuum_m: "";
                    cda_m: "";
                    brush_rps: "";
                    platen_rps: "";
                }
            }
        }

        Component {
            id: headerView;
            Item {
                width: parent.width;
                height: 30;
                RowLayout {
                    anchors.left: parent.left;
                    anchors.verticalCenter: parent.verticalCenter;
                    spacing: 8;
                    Repeater{
                        model:["Index_no","Brush_no","Life_Count","brush_diameter","program","lotID","start_time","end_time","process_time","pad_thick","temp_m","w_pos","platen_angle_m","brush_m","platen_m","env_m","vacuum_m","cda_m","brush_rps" , "platen_rps" ]

                        Text {
                            text: modelData;
                            font.bold: true;
                            font.pixelSize: 20;
                            Layout.preferredWidth: 250;
                        }
                    }
                }
            }
        }

        Component {
            id: footerView;
            Item{
                id: footerRootItem;
                width: parent.width;
                height: 30;
                property alias text: txt.text;
                signal clean();
                signal add();

                Text {
                    anchors.left: parent.left;
                    anchors.top: parent.top;
                    anchors.bottom: parent.bottom;
                    id: txt;
                    font.italic: true;
                    color: "blue";
                    verticalAlignment: Text.AlignVCenter;
                }

//                Button {
//                    id: clearAll;
//                    anchors.right: parent.right;
//                    anchors.verticalCenter: parent.verticalCenter;
//                    text: "Clear";
//                    onClicked: footerRootItem.clean();
//                }

//                Button {
//                    id: addOne;
//                    anchors.right: clearAll.left;
//                    anchors.rightMargin: 4;
//                    anchors.verticalCenter: parent.verticalCenter;
//                    text: "Add";
//                    onClicked: footerRootItem.add();
//                }
            }
        }

        Component {
            id: phoneDelegate;

            Item {
                id: wrapper;
                width: parent.width;
                height: 30;

                MouseArea {
                    anchors.fill: parent;
                    onClicked: {
                        wrapper.ListView.view.currentIndex = index ;
                        mouse.accepted = true;
                    }

                    onDoubleClicked: {
                        wrapper.ListView.view.model.remove(index);
                        mouse.accepted = true;
                    }
                }


                RowLayout {
                    //                    anchors.left: parent.left;
                    //                    anchors.verticalCenter: parent.verticalCenter;
                    spacing: 8;

                    Text {
                        id: col1;
                        text: index_no;
                        color: wrapper.ListView.isCurrentItem ? "red" : "black";
                        font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                        Layout.preferredWidth: 250;
                    }

                    Text {
                        text: Brush_no;
                        color: wrapper.ListView.isCurrentItem ? "red" : "black";
                        font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                        Layout.preferredWidth: 250;
                    }

                    Text {
                        text: life_count;
                        color: wrapper.ListView.isCurrentItem ? "red" : "black";
                        font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                        Layout.preferredWidth: 250;
                    }

                    Text {
                        text: brush_diameter;
                        color: wrapper.ListView.isCurrentItem ? "red" : "black";
                        font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                        Layout.preferredWidth: 250;
                    }

                    Text {
                        text: program;
                        color: wrapper.ListView.isCurrentItem ? "red" : "black";
                        font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                        Layout.preferredWidth: 250;
                    }
                    Text {
                        text: lotID;
                        color: wrapper.ListView.isCurrentItem ? "red" : "black";
                        font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                        Layout.preferredWidth: 250;
                    }

                    Text {
                        text: start_time;
                        color: wrapper.ListView.isCurrentItem ? "red" : "black";
                        font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                        Layout.preferredWidth: 250;
                    }

                    Text {
                        text: end_time;
                        color: wrapper.ListView.isCurrentItem ? "red" : "black";
                        font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                        Layout.preferredWidth: 250;
                    }

                    Text {
                        text: process_time;
                        color: wrapper.ListView.isCurrentItem ? "red" : "black";
                        font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                        Layout.preferredWidth: 250;
                    }

                    Text {
                        text: pad_thick;
                        color: wrapper.ListView.isCurrentItem ? "red" : "black";
                        font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                        Layout.preferredWidth: 250;
                    }

                    Text {
                        text: temp_m;
                        color: wrapper.ListView.isCurrentItem ? "red" : "black";
                        font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                        Layout.preferredWidth: 250;
                    }

                    Text {
                        text: w_pos;
                        color: wrapper.ListView.isCurrentItem ? "red" : "black";
                        font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                        Layout.preferredWidth: 250;
                    }

                    Text {
                        text: platen_angle_m;
                        color: wrapper.ListView.isCurrentItem ? "red" : "black";
                        font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                        Layout.preferredWidth: 250;
                    }

                    Text {
                        text: brush_m;
                        color: wrapper.ListView.isCurrentItem ? "red" : "black";
                        font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                        Layout.preferredWidth: 250;
                    }

                    Text {
                        text: platen_m;
                        color: wrapper.ListView.isCurrentItem ? "red" : "black";
                        font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                        Layout.preferredWidth: 250;
                    }

                    Text {
                        text: env_m;
                        color: wrapper.ListView.isCurrentItem ? "red" : "black";
                        font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                        Layout.preferredWidth: 250;
                    }

                    Text {
                        text: vacuum_m;
                        color: wrapper.ListView.isCurrentItem ? "red" : "black";
                        font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                        Layout.preferredWidth: 250;
                    }

                    Text {
                        text: cda_m;
                        color: wrapper.ListView.isCurrentItem ? "red" : "black";
                        font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                        Layout.preferredWidth: 250;
                    }

                    Text {
                        text: brush_rps;
                        color: wrapper.ListView.isCurrentItem ? "red" : "black";
                        font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                        Layout.preferredWidth: 250;
                    }

                    Text {
                        text: platen_rps;
                        color: wrapper.ListView.isCurrentItem ? "red" : "black";
                        font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                        Layout.preferredWidth: 250;
                    }
                }
            }
        }
        Flickable{
            flickableDirection: Flickable.HorizontalAndVerticalFlick
            width:parent.width;
            height:parent.height;
            contentWidth:250*20;
            contentHeight: parent.height;
            ListView {
                id: listView;
                anchors.fill: parent;

                delegate: phoneDelegate;
                model: phoneModel.createObject(listView);
                header: headerView;
                footer: footerView;
                focus: true;
                highlight: Rectangle{
                    color: "lightblue";
                }

//                onCurrentIndexChanged:{
//                    if( listView.currentIndex >=0 ){
//                        var data = listView.model.get(listView.currentIndex);
//                        listView.footerItem.text = data.index_no + " , " + data.Brush_no + " , " + data.life_count + " , " + data.brush_diameter;
//                        listView.footerItem.text +=  " , " + data.program + " , " + data.lotID + " , " + data.start_time + " , " + data.end_time;
//                        listView.footerItem.text +=  " , " + data.process_time + " , " + data.pad_thick + " , " + data.temp_m + " , " + data.w_pos;
//                        listView.footerItem.text +=  " , " + data.platen_angle_m + " , " + data.brush_m + " , " + data.platen_m + " , " + data.env_m;
//                        listView.footerItem.text +=  " , " + data.vacuum_m + " , " + data.cda_m + " , " + data.brush_rps + " , " + data.platen_rps;
//                    }else{
//                        listView.footerItem.text = "";
//                    }
//                }


                function findDataBase() {
                    var db = LocalStorage.openDatabaseSync("vbc.db", "1.0", "The Example QML SQL!", 1000000);

                    db.transaction(
                                function(tx) {
                                    // Create the database if it doesn't already exist
                                    tx.executeSql('CREATE TABLE IF NOT EXISTS Greeting(salutation TEXT, salutee TEXT)');
                                    // Add (another) greeting row
                                    tx.executeSql('INSERT INTO Greeting VALUES(?, ?)', [ 'hello', 'world' ]);

                                    // Show all added greetings
                                    var rs = tx.executeSql('SELECT * FROM history');

                                    var r = ""
//                                    for(var i = 0; i < rs.rows.length; i++) {
                                        for(var i = rs.rows.length-1; i >= 0; i--) {
                                        model.append(
                                                    {
                                                        "index_no": String(rs.rows.item(i).index_no),
                                                        "Brush_no": rs.rows.item(i).brush_no,
                                                        "life_count": String(rs.rows.item(i).life_count),
                                                        "brush_diameter": String(rs.rows.item(i).brush_diameter),
                                                        "program": rs.rows.item(i).program,
                                                        "lotID": rs.rows.item(i).lotID,
                                                        "start_time": rs.rows.item(i).start_time,
                                                        "end_time": rs.rows.item(i).end_time,
                                                        "process_time": rs.rows.item(i).process_time,
                                                        "pad_thick": String(rs.rows.item(i).pad_thick),
                                                        "temp_m": String(rs.rows.item(i).temp_m),
                                                        "w_pos": String(rs.rows.item(i).w_pos),
                                                        "platen_angle_m": String(rs.rows.item(i).platen_angle_m),
                                                        "brush_m": String(rs.rows.item(i).brush_m),
                                                        "platen_m": String(rs.rows.item(i).platen_m),
                                                        "env_m": String(rs.rows.item(i).env_m),
                                                        "vacuum_m": String(rs.rows.item(i).vacuum_m),
                                                        "cda_m": String(rs.rows.item(i).cda_m),
                                                        "brush_rps": String(rs.rows.item(i).brush_rps),
                                                        "platen_rps": String(rs.rows.item(i).platen_rps)
                                                    }
                                                    );
                                    }
                                }
                                )
                }
                Timer{
                    interval: 1000; running: true; repeat: true
                    onTriggered: {
                        var index = listView.currentIndex
                        listView.model.clear()
                        listView.findDataBase()
                        listView.currentIndex = index
                    }
                }
//                Component.onCompleted: {
//                    listView.footerItem.clean.connect(listView.model.clear);
//                    listView.footerItem.add.connect(listView.model.clear);
//                    listView.footerItem.add.connect(listView.findDataBase);
//                }
            }
        }
    }
}
