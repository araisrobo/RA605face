import QtQuick 2.0
import QtQuick.Window 2.0
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1
import QtQuick.LocalStorage 2.0

Rectangle {
    id: sideButton
    property string text: 'Button'
    property MyRadioGroup radioGroup

    //    color:  radioGroup.selected === sideButton ? '#E2EBFC' :
    //            (sideButtonMouseArea.containsMouse ? '#DDDDDD' : '#F4F4F4')
    color:  radioGroup.selected === sideButton ? 'gray' :
                                                 (sideButtonMouseArea.containsMouse ? 'green' : 'yellow')
    MouseArea {
        id: sideButtonMouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: {
            sideButton.radioGroup.selected = sideButton
            sideButton.findDataBase(sideButton.text)
        }

    }

    Text {
        id: sideButtonLabel
        text: sideButton.text
        font.pixelSize: 20
        font.family: 'Tahoma'
        anchors.centerIn: sideButton
        //        color: radioGroup.selected === sideButton ? '#E2EBFC' : '#787878'
        color: radioGroup.selected === sideButton ? 'black' : 'blue'
    }

    function findDataBase(username) {
        var db = LocalStorage.openDatabaseSync("vbc.db", "1.0", "The Example QML SQL!", 1000000);

        db.transaction(
                    function(tx) {
                        // Show all added greetings
                        var rs = tx.executeSql('SELECT * FROM users');
                        for(var i = rs.rows.length-1; i >= 0; i--) {
                            if (username === rs.rows.item(i).user_name) {
                                if (rs.rows.item(i).password === passwordTextField.text)
                                {
                                    console.log(rs.rows.item(i).password)
                                    console.log(passwordTextField.text)
                                    console.log("enable true")
                                    signalTab.enabled = true
                                    signalTab.active = true
                                    return
                                }
                            }else{
                                console.log("enable false")
                                signalTab.enabled = false
                                signalTab.active = false
                            }
                        }
                    }
                    )
    }
}
