
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
    id: vbcTab
    anchors.top:parent.top
    title: qsTr("VBC")
    active: true

    property double basewidth: (parent.width / 6)
    property double ledSize: (parent.width / 30)
    property double fontSize: parent.width / 30
    property double ledspacing: basewidth * 0.5
    property double zoom_add: 1
    property double textspacing_h: 0//height * 0.0075

    ApplicationItem {
        property bool eWasConnected: false
        property bool eEnabled: halRemoteComponent.connected

        id:root

        HalRemoteComponent {
            id: halRemoteComponent
            halrcmdUri: halrcmdService.uri
            halrcompUri: halrcompService.uri
            ready: (halrcmdService.ready && halrcompService.ready) || connected
            name: "vbc_param"
            containerItem: extruderControl
            create: false
            onErrorStringChanged: console.log(errorString)
            onConnectedChanged: root.eWasConnected = true
        }
        Item{
            id: extruderControl
            enabled: eEnabled
            TabView {
//                Component.onCompleted: {
//                    disable_vbcConfigs()
//                }
                function disable_vbcConfigs(){
                    vbcConfigs.enabled = false
                }

                frameVisible: false
                VBC_Status{id: vbcStatus}
                VBC_Configs{id: vbcConfigs}
            }
        }
    }
}
