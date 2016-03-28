import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1
import QtQuick.Window 2.0
import Machinekit.HalRemote 1.0
import Machinekit.HalRemote.Controls 1.0
import Machinekit.Controls 1.0
import Machinekit.Application.Controls 1.0
import Machinekit.Service 1.0

Tab {
    title: qsTr("Extras")
    active: true

    visible: halRemoteComponent.connected || wasConnected

    Service {
        id: halrcompService
        type: "halrcomp"
    }

    Service {
        id: halrcmdService
        type: "halrcmd"
    }

    HalRemoteComponent {
        id: halRemoteComponent
        halrcmdUri: halrcmdService.uri
        halrcompUri: halrcompService.uri
        ready: (halrcmdService.ready && halrcompService.ready) || connected
        name: "extras"
        containerItem: container
        create: false
        onErrorStringChanged: console.log(errorString)
        onConnectedChanged:  root.wasConnected = true
    }

    Item {
        ColumnLayout {
            id: column1
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            anchors.margins: Screen.pixelDensity
            width: parent.width / 2
            spacing: Screen.pixelDensity

            Row {
                Repeater {
                    model: 3
                    Rectangle {
                        width: 100; height: 40
                        border.width: 1
                        color: "yellow"
                        HalLed {
                            name: "gpio.in."+index
                        }
                    }
                }
            }

            Item {
                Layout.fillHeight: true
            }

            MdiCommandAction {
                id: filamentAction
                enableHistory: false
            }
        }
    }
}
