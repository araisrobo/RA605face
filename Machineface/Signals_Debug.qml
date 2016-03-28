import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import Machinekit.Controls 1.0
import Machinekit.HalRemote 1.0
import QtQuick.Window 2.0

Tab{
    id: debugtab
    anchors.top:parent.top
    title: qsTr("Debug")
    active: true
    property double basewidth: (window.width - window.height * 0.1).toFixed((2))
    property double ledSize: (basewidth - ledspacing * 36) / 37
    property double ledspacing: basewidth * 0.005
    property int baseSize: Math.min(width, height)
    property int fontSize: baseSize * 0.2
    property double valuescale: ((basewidth - 50) / 4).toFixed(2)

    Item {
        //***************************************************
        // Debug (value)
        //***************************************************
        GroupBox {
            id: groupbox1
            title: qsTr("Debug  ")
            flat: false

            //***************************************************
            // Debug 00-03
            //***************************************************
            RowLayout {
                id: rowLayout1
                height: ledSize
                spacing: ledspacing

                Text {//debug00
                    text: "00: " + debug_00.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: debug_00
                        name: "debug.value.0"
                        direction: HalPin.In
                        type: HalPin.S32
                    }
                }
                Text {//debug01
                    text: "01: " + debug_01.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: debug_01
                        name: "debug.value.1"
                        direction: HalPin.In
                        type: HalPin.S32
                    }
                }
                Text {//debug02
                    text: "02: " + debug_02.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: debug_02
                        name: "debug.value.2"
                        direction: HalPin.In
                        type: HalPin.S32
                    }
                }
                Text {//debug03
                    text: "03: " + debug_03.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: debug_03
                        name: "debug.value.3"
                        direction: HalPin.In
                        type: HalPin.S32
                    }
                }
            }
            //***************************************************
            // Debug 04-07
            //***************************************************
            RowLayout{
                id: rowLayout2
                height: ledSize
                spacing: ledspacing
                y: rowLayout1.y + rowLayout1.height + ledspacing

                Text {//debug04
                    text: "04: " + debug_04.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: debug_04
                        name: "debug.value.4"
                        direction: HalPin.In
                        type: HalPin.S32
                    }
                }
                Text {//debug05
                    text: "05: " + debug_05.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: debug_05
                        name: "debug.value.5"
                        direction: HalPin.In
                        type: HalPin.S32
                    }
                }
                Text {//debug06
                    text: "06: " + debug_06.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: debug_06
                        name: "debug.value.6"
                        direction: HalPin.In
                        type: HalPin.S32
                    }
                }
                Text {//debug07
                    text: "07: " + debug_07.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: debug_07
                        name: "debug.value.7"
                        direction: HalPin.In
                        type: HalPin.S32
                    }
                }
            }
        } //GroupBox(Debug)
    }
}
