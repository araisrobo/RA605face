import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import Machinekit.Controls 1.0
import Machinekit.HalRemote.Controls 1.0
import Machinekit.HalRemote 1.0
import Machinekit.Application 1.0
import QtQuick.Window 2.0

Tab {
    id: analogtab
    anchors.top:parent.top
    title: qsTr("Analog")
    active: true

    property double basewidth: (window.width - window.height * 0.1).toFixed((2))
    property double ledSize: (basewidth - ledspacing * 36) / 37
    property double ledspacing: basewidth * 0.005
    property int baseSize: Math.min(width, height)
    property int fontSize: baseSize * 0.2
    property double valuescale: ((basewidth - 50) / 4).toFixed(2)

    Item{
        //***************************************************
        // Analog (input)
        //***************************************************
        GroupBox{
            id: groupbox1
            title: qsTr("Analog Input  ")
            flat: false
            //***************************************************
            // Input 00-03
            //***************************************************
            RowLayout{
                id: rowLayout1
                height: ledSize
                spacing: ledspacing

                Text {//ain00
                    text: "00: " + ain_00.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: ain_00
                        name: "analog.in.0"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//ain01
                    text: "01: " + ain_01.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: ain_01
                        name: "analog.in.1"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//ain02
                    text: "02: " + ain_02.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: ain_02
                        name: "analog.in.2"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//ain03
                    text: "03: " + ain_03.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: ain_03
                        name: "analog.in.3"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
            }
            //***************************************************
            // Input 04-07
            //***************************************************
            RowLayout{
                id: rowLayout2
                height: ledSize
                spacing: ledspacing
                y: rowLayout1.y + rowLayout1.height + ledspacing

                Text {//ain04
                    text: "04: " + ain_04.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: ain_04
                        name: "analog.in.4"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//ain05
                    text: "05: " + ain_05.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: ain_05
                        name: "analog.in.5"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//ain06
                    text: "06: " + ain_06.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: ain_06
                        name: "analog.in.6"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//ain07
                    text: "07: " + ain_07.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: ain_07
                        name: "analog.in.7"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
            }
            //***************************************************
            // Input 08-11
            //***************************************************
            RowLayout{
                id: rowLayout3
                height: ledSize
                spacing: ledspacing
                y: rowLayout2.y + rowLayout2.height + ledspacing

                Text {//ain08
                    text: "08: " + ain_08.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: ain_08
                        name: "analog.in.8"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//ain09
                    text: "09: " + ain_09.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: ain_09
                        name: "analog.in.9"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//ain10
                    text: "10: " + ain_10.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: ain_10
                        name: "analog.in.10"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//ain11
                    text: "11: " + ain_11.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: ain_11
                        name: "analog.in.11"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
            }
            //***************************************************
            // Input 12-15
            //***************************************************
            RowLayout{
                id: rowLayout4
                height: ledSize
                spacing: ledspacing
                y: rowLayout3.y + rowLayout3.height + ledspacing

                Text {//ain12
                    text: "12: " + ain_12.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: ain_12
                        name: "analog.in.12"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//ain13
                    text: "13: " + ain_13.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: ain_13
                        name: "analog.in.13"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//ain14
                    text: "14: " + ain_14.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: ain_14
                        name: "analog.in.14"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//ain15
                    text: "15: " + ain_15.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: ain_15
                        name: "analog.in.15"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
            }
        }//GroupBox{Analog (input)

        //***************************************************
        // Analog (output)
        //***************************************************
        GroupBox{
            id: groupbox2
            title: qsTr("Analog Output  ")
            anchors.top: groupbox1.bottom
            flat: false
            //***************************************************
            // Output 00-03
            //***************************************************
            RowLayout{
                id: rowlayout5
                height: ledSize
                spacing: ledspacing

                Text {//aout00
                    text: "00: " + aout_00.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: aout_00
                        name: "analog.out.0"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//aout01
                    text: "01: " + aout_01.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: aout_01
                        name: "analog.out.1"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//aout02
                    text: "02: " + aout_02.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: aout_02
                        name: "analog.out.2"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//aout03
                    text: "03: " + aout_03.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: aout_03
                        name: "analog.out.3"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
            }
        }//GroupBox{Analog (output)
        //***************************************************
        // Analog (output) feedback
        //***************************************************
        GroupBox{
            id: groupbox3
            title: qsTr("Analog Output Feedback  ")
            anchors.top: groupbox2.bottom
            flat: false
            //***************************************************
            // Output 00-03
            //***************************************************
            RowLayout{
                id: rowlayout6
                height: ledSize
                spacing: ledspacing

                Text {//aoutfb00
                    text: "00: " + aout_fb_00.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: aout_fb_00
                        name: "analog.out.0.fb"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//aoutfb01
                    text: "01: " + aout_fb_01.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: aout_fb_01
                        name: "analog.out.1.fb"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//aoutfb02
                    text: "02: " + aout_fb_02.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: aout_fb_02
                        name: "analog.out.2.fb"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//aoutfb03
                    text: "03: " + aout_fb_03.value
                    font.pixelSize: fontSize
                    Layout.preferredWidth: valuescale
                    HalPin {
                        id: aout_fb_03
                        name: "analog.out.3.fb"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
            }
        }//GroupBox{Analog (output)-feedback

    }
}
