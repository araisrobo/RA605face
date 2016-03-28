import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import Machinekit.Controls 1.0
import Machinekit.HalRemote.Controls 1.0
import Machinekit.HalRemote 1.0
import Machinekit.Application 1.0
import QtQuick.Window 2.0

Tab {
    id: gpiotab
    anchors.top: parent.top
    anchors.right: parent.right
    title: qsTr("GPIO")
    active: true

    property double basewidth: (window.width - window.height * 0.1).toFixed((2))
    property double ledSize: (basewidth - ledspacing * 36) / 37
    property double ledspacing: basewidth * 0.005
    property double zoom_add: 1
    property double textspacing_h: 0
    property int baseSize: Math.min(width, height)
    property int fontSize: baseSize * 0.12

    Item{// 當有GroupBox有兩組以上,需要Item來支援
        HalPin {
            id: joints
            name: "joints"
            direction: HalPin.In
            type: HalPin.U32
        }
        //***************************************************
        // GPIO (intput)
        //***************************************************
        GroupBox{
            id: groupbox1
            title: qsTr("Digitial Input  ")
            flat: false
            anchors.top: parent.top
            //***************************************************
            // Input 00-31
            //***************************************************
            RowLayout{
                id:rowLayout1_1
                height: ledSize
                spacing: ledspacing

                Text {
                    text: qsTr("31")
                    font.pixelSize: fontSize
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.31"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.30"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.29"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.28"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.27"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.26"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.25"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.24"
                }
            }
            RowLayout{
                id:rowLayout1_2
                height: ledSize
                spacing: ledspacing
                x: rowLayout1_1.x + rowLayout1_1.width
                Text {
                    text: qsTr("24")
                    font.pixelSize: fontSize
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.23"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.22"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.21"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.20"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.19"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.18"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.17"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.16"
                }
            }
            RowLayout{
                id:rowLayout1_3
                height: ledSize
                spacing: ledspacing
                x: rowLayout1_2.x + rowLayout1_2.width

                Text {
                    text: qsTr("16")
                    font.pixelSize: fontSize
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.15"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.14"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.13"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.12"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.11"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.10"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.9"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.8"
                }
            }
            RowLayout{
                id: rowLayout1_4
                height: ledSize
                spacing: ledspacing
                x: rowLayout1_3.x + rowLayout1_3.width

                Text {
                    text: qsTr("08")
                    font.pixelSize: fontSize
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.7"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.6"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.5"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.4"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.3"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.2"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.1"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.0"
                }
                Text {
                    text: qsTr("00")
                    font.pixelSize: fontSize
                }
            }
            //***************************************************
            // Input 32-63
            //***************************************************
            RowLayout{
                id: rowLayout2_1
                height: ledSize
                spacing: ledspacing
                x: rowLayout1_1.x
                y: rowLayout1_1.y + rowLayout1_1.height + ledspacing

                Text {
                    text: qsTr("63")
                    font.pixelSize: fontSize
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.63"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.62"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.61"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.60"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.59"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.58"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.57"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.56"
                }
            }
            RowLayout{
                id:rowLayout2_2
                height: ledSize
                spacing: ledspacing
                x: rowLayout1_2.x
                y: rowLayout1_2.y + rowLayout1_2.height + ledspacing

                Text {
                    text: qsTr("56")
                    font.pixelSize: fontSize
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.55"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.54"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.53"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.52"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.51"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.50"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.49"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.48"
                }
            }
            RowLayout{
                id:rowLayout2_3
                height: ledSize
                spacing: ledspacing
                x: rowLayout1_3.x
                y: rowLayout1_3.y + rowLayout1_3.height + ledspacing

                Text {
                    text: qsTr("48")
                    font.pixelSize: fontSize
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.47"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.46"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.45"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.44"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.43"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.42"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.41"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.40"
                }
            }
            RowLayout{
                id: rowLayout2_4
                height: ledSize
                spacing: ledspacing
                x: rowLayout1_4.x
                y: rowLayout1_4.y + rowLayout1_4.height + ledspacing

                Text {
                    text: qsTr("40")
                    font.pixelSize: fontSize
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.39"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.38"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.37"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.36"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.35"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.34"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.33"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.32"
                }
                Text {
                    text: qsTr("32")
                    font.pixelSize: fontSize
                }
            }
            //***************************************************
            // Input 64-96
            //***************************************************
            RowLayout{
                id: rowLayout3_1
                height: ledSize
                spacing:ledspacing
                x: rowLayout1_1.x
                y: rowLayout2_1.y + rowLayout2_1.height + ledspacing

                Text {
                    text: qsTr("95")
                    font.pixelSize: fontSize
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.95"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.94"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.93"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.92"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.91"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.90"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.89"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.88"
                }
            }
            RowLayout{
                id:rowLayout3_2
                height: ledSize
                spacing: ledspacing
                x: rowLayout1_2.x
                y: rowLayout2_2.y + rowLayout2_2.height + ledspacing

                Text {
                    text: qsTr("88")
                    font.pixelSize: fontSize
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.87"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.86"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.85"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.84"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.83"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.82"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.81"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.80"
                }
            }
            RowLayout{
                id:rowLayout3_3
                height: ledSize
                spacing: ledspacing
                x: rowLayout1_3.x
                y: rowLayout2_3.y + rowLayout2_3.height + ledspacing

                Text {
                    text: qsTr("80")
                    font.pixelSize: fontSize
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.79"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.78"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.77"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.76"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.75"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.74"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.73"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.72"
                }
            }
            RowLayout{
                id:rowLayout3_4
                height: ledSize
                spacing: ledspacing
                x: rowLayout1_4.x
                y: rowLayout2_4.y + rowLayout2_4.height + ledspacing

                Text {
                    text: qsTr("72")
                    font.pixelSize: fontSize
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.71"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.70"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.69"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.68"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.67"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.66"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.65"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.in.64"
                }
                Text {
                    text: qsTr("64")
                    font.pixelSize: fontSize
                }
            }
        }//GroupBox{GPIO (input)
        //***************************************************
        // GPIO (output)
        //***************************************************
        GroupBox{
            id: groupbox2
            title: qsTr("Digitial Output  ")
            flat: false
            anchors.top: groupbox1.bottom
            //***************************************************
            // Output 00-31
            //***************************************************
            RowLayout{
                id:rowLayout4_1
                height: ledSize
                spacing: ledspacing
                x: rowLayout1_1.x

                Text {
                    text: qsTr("31")
                    font.pixelSize: fontSize
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.31"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.30"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.29"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.28"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.27"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.26"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.25"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.24"
                }
            }
            RowLayout{
                id:rowLayout4_2
                height: ledSize
                spacing: ledspacing
                x: rowLayout1_2.x

                Text {
                    text: qsTr("24")
                    font.pixelSize: fontSize
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.23"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.22"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.21"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.20"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.19"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.18"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.17"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.16"
                }
            }
            RowLayout{
                id:rowLayout4_3
                height: ledSize
                spacing: ledspacing
                x: rowLayout1_3.x

                Text {
                    text: qsTr("16")
                    font.pixelSize: fontSize
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.15"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.14"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.13"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.12"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.11"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.10"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.9"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.8"
                }
            }
            RowLayout{
                id:rowLayout4_4
                height: ledSize
                spacing: ledspacing
                x: rowLayout1_4.x

                Text {
                    text: qsTr("08")
                    font.pixelSize: fontSize
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.7"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.6"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.5"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.4"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.3"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.2"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.1"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.0"
                }
                Text {
                    text: qsTr("00")
                    font.pixelSize: fontSize
                }
            }
            //***************************************************
            // Output 32-63
            //***************************************************
            RowLayout{
                id: rowLayout5_1
                height: ledSize
                spacing:ledspacing
                x: rowLayout1_1.x
                y: rowLayout4_1.y + rowLayout4_1.height + ledspacing

                Text {
                    text: qsTr("63")
                    font.pixelSize: fontSize
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.63"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.62"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.61"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.60"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.59"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.58"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.57"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.56"
                }
            }
            RowLayout{
                id:rowLayout5_2
                height: ledSize
                spacing:ledspacing
                x: rowLayout1_2.x
                y: rowLayout4_2.y + rowLayout4_2.height + ledspacing

                Text {
                    text: qsTr("56")
                    font.pixelSize: fontSize
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.55"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.54"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.53"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.52"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.51"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.50"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.49"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.48"
                }
            }
            RowLayout{
                id:rowLayout5_3
                height: ledSize
                spacing:ledspacing
                x: rowLayout1_3.x
                y: rowLayout4_3.y + rowLayout4_3.height + ledspacing

                Text {
                    text: qsTr("48")
                    font.pixelSize: fontSize
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.47"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.46"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.45"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.44"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.43"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.42"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.41"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.40"
                }
            }
            RowLayout{
                id: rowLayout5_4
                height: ledSize
                spacing: ledspacing
                x: rowLayout1_4.x
                y: rowLayout4_4.y + rowLayout4_4.height + ledspacing

                Text {
                    text: qsTr("40")
                    font.pixelSize: fontSize
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.39"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.38"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.37"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.36"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.35"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.34"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.33"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.32"
                }
                Text {
                    text: qsTr("32")
                    font.pixelSize: fontSize
                }
            }
            //***************************************************
            // Output 64-96
            //***************************************************
            RowLayout{
                id: rowLayout6_1
                height: ledSize
                spacing:ledspacing
                x: rowLayout1_1.x
                y: rowLayout5_1.y + rowLayout5_1.height + ledspacing

                Text {
                    text: qsTr("95")
                    font.pixelSize: fontSize
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.95"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.94"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.93"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.92"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.91"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.90"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.89"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.88"
                }
            }
            RowLayout{
                id:rowLayout6_2
                height: ledSize
                spacing:ledspacing
                x: rowLayout1_2.x
                y: rowLayout5_2.y + rowLayout5_2.height + ledspacing

                Text {
                    text: qsTr("88")
                    font.pixelSize: fontSize
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.87"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.86"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.85"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.84"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.83"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.82"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.81"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.80"
                }
            }
            RowLayout{
                id: rowLayout6_3
                height: ledSize
                spacing: ledspacing
                x: rowLayout1_3.x
                y: rowLayout5_3.y + rowLayout5_3.height + ledspacing

                Text {
                    text: qsTr("80")
                    font.pixelSize: fontSize
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.79"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.78"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.77"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.76"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.75"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.74"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.73"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.72"
                }
            }
            RowLayout{
                id: rowLayout6_4
                height: ledSize
                spacing: ledspacing
                x: rowLayout1_4.x
                y: rowLayout5_4.y + rowLayout5_4.height + ledspacing

                Text {
                    text: qsTr("72")
                    font.pixelSize: fontSize
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.71"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.70"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.69"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.68"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.67"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.66"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.65"
                }
                HalLed{
                    Layout.preferredWidth : ledSize
                    Layout.preferredHeight : ledSize
                    name:"gpio.out.64"
                }
                Text {
                    text: qsTr("64")
                    textFormat: Text.AutoText
                    font.pixelSize: fontSize
                }
            }
        }//GroupBox{GPIO (output)
        //***************************************************
        // Parameters
        //***************************************************

        GroupBox{
            id: groupbox3
            title: qsTr("Positions  ")
            anchors.top: groupbox2.bottom
            flat: false
            property double namescale: (groupbox1.width.toFixed((2)) / 20).toFixed(2)
            property double valuescale: ((groupbox1.width.toFixed((2)) - spacetext.width - 10) / 6.1).toFixed(2)
            //***************************************************
            // Parameters(name)
            //***************************************************
            RowLayout{
                id: rowLayout7
                spacing: 0
                Text {
                    id: spacetext
                    text: qsTr("")
                    font.pixelSize: fontSize * zoom_add
                    font.bold: true
                    Layout.preferredWidth: groupbox3.namescale
                    horizontalAlignment: Text.AlignRight

                }
                Text {
                    id: mototcmdtext
                    text: qsTr("risc-pos-cmd-pulse")
                    font.pixelSize: fontSize * zoom_add
                    font.bold: true
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight

                }
                Text {
                    id: encpostext
                    text: qsTr("enc-pos")
                    font.pixelSize: fontSize * zoom_add
                    font.bold: true
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                }
                Text {
                    id: poscmdtext
                    text: qsTr("pos-cmd")
                    font.pixelSize: fontSize * zoom_add
                    font.bold: true
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                }
                Text {
                    id: posfbtext
                    text: qsTr("pos-fb")
                    font.pixelSize: fontSize * zoom_add
                    font.bold: true
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                }
                Text {
                    id: velfbtext
                    text: qsTr("vel-fb")
                    font.pixelSize: fontSize * zoom_add
                    font.bold: true
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                }
                Text {
                    id: ferrortext
                    text: qsTr("ferror")
                    font.pixelSize: fontSize * zoom_add
                    font.bold: true
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                }
            }
            //***************************************************
            // Parameters(value)-J0
            //***************************************************
            RowLayout{
                id:rowLayout8
                height: rowLayout7.height
                spacing: 0
                y: rowLayout7.y + rowLayout7.height + textspacing_h
                Text {
                    id: j0text
                    text: qsTr("J0")
                    font.pixelSize: fontSize * zoom_add
                    font.bold: true
                    Layout.preferredWidth: groupbox3.namescale
                    horizontalAlignment: Text.AlignHCenter
                }
                Text {//j0_cmd_pos
                    text: j0_cmd_pos.value
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j0_cmd_pos
                        name: "joint.0.risc-pos-cmd-pulse"
                        direction: HalPin.In
                        type: HalPin.S32
                    }
                }
                Text {//encposj0
                    text: j0_enc_pos.value
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j0_enc_pos
                        name: "joint.0.enc-pos"
                        direction: HalPin.In
                        type: HalPin.S32
                    }
                }
                Text {//poscmdj0
                    text: j0_pos_cmd.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j0_pos_cmd
                        name: "joint.0.pos-cmd"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//posfbj0
                    text: j0_pos_fb.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j0_pos_fb
                        name: "joint.0.pos-fb"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//velfbj0
                    text: j0_vel_fb.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j0_vel_fb
                        name: "joint.0.vel-fb"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//ferrorj0
                    text: j0_ferror.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j0_ferror
                        name: "joint.0.ferror"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
            }
            //***************************************************
            // Parameters(value)-J1
            //***************************************************
            RowLayout{
                id:rowLayout9
                height: rowLayout8.height
                spacing: 0
                y: rowLayout8.y + rowLayout8.height + textspacing_h

                Text {
                    id: j1text
                    text: qsTr("J1")
                    font.pixelSize: fontSize * zoom_add
                    font.bold: true
                    Layout.preferredWidth: groupbox3.namescale
                    horizontalAlignment: Text.AlignHCenter
                }
                Text {//j1_cmd_pos
                    text: j1_cmd_pos.value
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j1_cmd_pos
                        name: "joint.1.risc-pos-cmd-pulse"
                        direction: HalPin.In
                        type: HalPin.S32
                    }
                }
                Text {//encposj1
                    text: j1_enc_pos.value
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j1_enc_pos
                        name: "joint.1.enc-pos"
                        direction: HalPin.In
                        type: HalPin.S32
                    }
                }
                Text {//poscmdj1
                    text: j1_pos_cmd.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j1_pos_cmd
                        name: "joint.1.pos-cmd"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//posfbj1
                    text: j1_pos_fb.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j1_pos_fb
                        name: "joint.1.pos-fb"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//velfbj1
                    text: j1_vel_fb.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j1_vel_fb
                        name: "joint.1.vel-fb"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//ferrorj1
                    text: j1_ferror.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j1_ferror
                        name: "joint.1.ferror"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
            }
            //***************************************************
            // Parameters(value)-J2
            //***************************************************
            RowLayout{
                id:rowLayout10
                height: rowLayout9.height
                spacing: 0
                y: rowLayout9.y + rowLayout9.height + textspacing_h

                Text {
                    id: j2text
                    text: qsTr("J2")
                    font.pixelSize: fontSize * zoom_add
                    font.bold: true
                    Layout.preferredWidth: groupbox3.namescale
                    horizontalAlignment: Text.AlignHCenter
                }
                Text {//j2_cmd_pos
                    text: j2_cmd_pos.value
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j2_cmd_pos
                        name: "joint.2.risc-pos-cmd-pulse"
                        direction: HalPin.In
                        type: HalPin.S32
                    }
                }
                Text {//encposj2
                    text: j2_enc_pos.value
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j2_enc_pos
                        name: "joint.2.enc-pos"
                        direction: HalPin.In
                        type: HalPin.S32
                    }
                }
                Text {//poscmdj2
                    text: j2_pos_cmd.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j2_pos_cmd
                        name: "joint.2.pos-cmd"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//posfbj2
                    text: j2_pos_fb.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j2_pos_fb
                        name: "joint.2.pos-fb"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//velfbj2
                    text: j2_vel_fb.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j2_vel_fb
                        name: "joint.2.vel-fb"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//ferrorj2
                    text: j2_ferror.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j2_ferror
                        name: "joint.2.ferror"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
            }
            //***************************************************
            // Parameters(value)-J3
            //***************************************************
            RowLayout{
                id:rowLayout11
                height: rowLayout10.height
                spacing: 0
                y: rowLayout10.y + rowLayout10.height + textspacing_h

                Text {
                    id: j3text
                    text: qsTr("J3")
                    font.pixelSize: fontSize * zoom_add
                    font.bold: true
                    Layout.preferredWidth: groupbox3.namescale
                    horizontalAlignment: Text.AlignHCenter
                }
                Text {//j3_cmd_pos
                    text: j3_cmd_pos.value
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j3_cmd_pos
                        name: "joint.3.risc-pos-cmd-pulse"
                        direction: HalPin.In
                        type: HalPin.S32
                    }
                }
                Text {//encposj3
                    text: j3_enc_pos.value
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j3_enc_pos
                        name: "joint.3.enc-pos"
                        direction: HalPin.In
                        type: HalPin.S32
                    }
                }
                Text {//poscmdj3
                    text: j3_pos_cmd.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j3_pos_cmd
                        name: "joint.3.pos-cmd"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//posfbj3
                    text: j3_pos_fb.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j3_pos_fb
                        name: "joint.3.pos-fb"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//velfbj3
                    text: j3_vel_fb.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j3_vel_fb
                        name: "joint.3.vel-fb"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//ferrorj3
                    text: j3_ferror.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j3_ferror
                        name: "joint.3.ferror"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
            }
            //***************************************************
            // Parameters(value)-J4
            //***************************************************
            RowLayout{
                id:rowLayout12
                height: rowLayout11.height
                spacing: 0
                y: rowLayout11.y + rowLayout11.height + textspacing_h

                Text {
                    id: j4text
                    text: qsTr("J4")
                    font.pixelSize: fontSize * zoom_add
                    font.bold: true
                    Layout.preferredWidth: groupbox3.namescale
                    horizontalAlignment: Text.AlignHCenter
                }
                Text {//j4_cmd_pos
                    text: j4_cmd_pos.value
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j4_cmd_pos
                        name: "joint.4.risc-pos-cmd-pulse"
                        direction: HalPin.In
                        type: HalPin.S32
                    }
                }
                Text {//encposj4
                    text: j4_enc_pos.value
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j4_enc_pos
                        name: "joint.4.enc-pos"
                        direction: HalPin.In
                        type: HalPin.S32
                    }
                }
                Text {//poscmdj4
                    text: j4_pos_cmd.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j4_pos_cmd
                        name: "joint.4.pos-cmd"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//posfbj4
                    text: j4_pos_fb.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j4_pos_fb
                        name: "joint.4.pos-fb"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//velfbj4
                    text: j4_vel_fb.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j4_vel_fb
                        name: "joint.4.vel-fb"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//ferrorj4
                    text: j4_ferror.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j4_ferror
                        name: "joint.4.ferror"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
            }
            //***************************************************
            // Parameters(value)-J5
            //***************************************************
            RowLayout{
                id:rowLayout13
                height: rowLayout12.height
                spacing: 0
                y: rowLayout12.y + rowLayout12.height + textspacing_h

                Text {
                    id: j5text
                    text: qsTr("J5")
                    font.pixelSize: fontSize * zoom_add
                    font.bold: true
                    Layout.preferredWidth: groupbox3.namescale
                    horizontalAlignment: Text.AlignHCenter
                }
                Text {//j5_cmd_pos
                    text: j5_cmd_pos.value
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j5_cmd_pos
                        name: "joint.5.risc-pos-cmd-pulse"
                        direction: HalPin.In
                        type: HalPin.S32
                    }
                }
                Text {//encposj5
                    text: j5_enc_pos.value
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j5_enc_pos
                        name: "joint.5.enc-pos"
                        direction: HalPin.In
                        type: HalPin.S32
                    }
                }
                Text {//poscmdj5
                    text: j5_pos_cmd.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j5_pos_cmd
                        name: "joint.5.pos-cmd"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//posfbj5
                    text: j5_pos_fb.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j5_pos_fb
                        name: "joint.5.pos-fb"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//velfbj5
                    text: j5_vel_fb.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j5_vel_fb
                        name: "joint.5.vel-fb"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//ferrorj5
                    text: j5_ferror.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j5_ferror
                        name: "joint.5.ferror"
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
            }
            //***************************************************
            // Parameters(value)-J6
            //***************************************************
//            RowLayout{
//                id:rowLayout14
//                height: rowLayout13.height
//                spacing: 0
//                y: rowLayout13.y + rowLayout13.height + textspacing_h
//
//                Text {
//                    id: j6text
//                    text: qsTr("J6")
//                    font.pixelSize: fontSize * zoom_add
//                    font.bold: true
//                    Layout.preferredWidth: groupbox3.namescale
//                    horizontalAlignment: Text.AlignHCenter
//                }
//                Text {//j6_cmd_pos
//                    text: j6_cmd_pos.value
//                    font.pixelSize: fontSize * zoom_add
//                    Layout.preferredWidth: groupbox3.valuescale
//                    horizontalAlignment: Text.AlignRight
//                    HalPin {
//                        id: j6_cmd_pos
//                        name: "joint.6.risc-pos-cmd-pulse"
//                        direction: HalPin.In
//                        type: HalPin.S32
//                    }
//                }
//                Text {//encposj6
//                    text: j6_enc_pos.value
//                    font.pixelSize: fontSize * zoom_add
//                    Layout.preferredWidth: groupbox3.valuescale
//                    horizontalAlignment: Text.AlignRight
//                    HalPin {
//                        id: j6_enc_pos
//                        name: "joint.6.enc-pos"
//                        direction: HalPin.In
//                        type: HalPin.S32
//                    }
//                }
//                Text {//poscmdj6
//                    text: j6_pos_cmd.value.toFixed(2)
//                    font.pixelSize: fontSize * zoom_add
//                    Layout.preferredWidth: groupbox3.valuescale
//                    horizontalAlignment: Text.AlignRight
//                    HalPin {
//                        id: j6_pos_cmd
//                        name: "joint.6.pos-cmd"
//                        direction: HalPin.In
//                        type: HalPin.Float
//                    }
//                }
//                Text {//posfbj6
//                    text: j6_pos_fb.value.toFixed(2)
//                    font.pixelSize: fontSize * zoom_add
//                    Layout.preferredWidth: groupbox3.valuescale
//                    horizontalAlignment: Text.AlignRight
//                    HalPin {
//                        id: j6_pos_fb
//                        name: "joint.6.pos-fb"
//                        direction: HalPin.In
//                        type: HalPin.Float
//                    }
//                }
//                Text {//velfbj6
//                    text: j6_vel_fb.value.toFixed(2)
//                    font.pixelSize: fontSize * zoom_add
//                    Layout.preferredWidth: groupbox3.valuescale
//                    horizontalAlignment: Text.AlignRight
//                    HalPin {
//                        id: j6_vel_fb
//                        name: "joint.6.vel-fb"
//                        direction: HalPin.In
//                        type: HalPin.Float
//                    }
//                }
//                Text {//ferrorj6
//                    text: j6_ferror.value.toFixed(2)
//                    font.pixelSize: fontSize * zoom_add
//                    Layout.preferredWidth: groupbox3.valuescale
//                    horizontalAlignment: Text.AlignRight
//                    HalPin {
//                        id: j6_ferror
//                        name: "joint.6.ferror"
//                        direction: HalPin.In
//                        type: HalPin.Float
//                    }
//                }
//            }
            //***************************************************
            // Parameters(value)-J7
            //***************************************************
            RowLayout{
                id:rowLayout15
                height: rowLayout14.height
                spacing: 0
                y: rowLayout14.y + rowLayout14.height + textspacing_h
                visible: (joints.value > 7) ? true : false
                property bool j7enable: (joints.value > 7) ? true : false
                Text {
                    id: j7text
                    text: qsTr("J7")
                    font.pixelSize: fontSize * zoom_add
                    font.bold: true
                    Layout.preferredWidth: groupbox3.namescale
                    horizontalAlignment: Text.AlignHCenter
                }
                Text {//j7_cmd_pos
                    text: j7_cmd_pos.value
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j7_cmd_pos
                        name: "joint.7.risc-pos-cmd-pulse"
                        enabled: rowLayout15.j7enable
                        direction: HalPin.In
                        type: HalPin.S32
                    }
                }
                Text {//encposj7
                    text: j7_enc_pos.value
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j7_enc_pos
                        name: "joint.7.enc-pos"
                        enabled: rowLayout15.j7enable
                        direction: HalPin.In
                        type: HalPin.S32
                    }
                }
                Text {//poscmdj7
                    text: j7_pos_cmd.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j7_pos_cmd
                        name: "joint.7.pos-cmd"
                        enabled: rowLayout15.j7enable
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//posfbj7
                    text: j7_pos_fb.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j7_pos_fb
                        name: "joint.7.pos-fb"
                        enabled: rowLayout15.j7enable
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//velfbj7
                    text: j7_vel_fb.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j7_vel_fb
                        name: "joint.7.vel-fb"
                        enabled: rowLayout15.j7enable
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
                Text {//ferrorj7
                    text: j7_ferror.value.toFixed(2)
                    font.pixelSize: fontSize * zoom_add
                    Layout.preferredWidth: groupbox3.valuescale
                    horizontalAlignment: Text.AlignRight
                    HalPin {
                        id: j7_ferror
                        name: "joint.7.ferror"
                        enabled: rowLayout15.j7enable
                        direction: HalPin.In
                        type: HalPin.Float
                    }
                }
            }
        }//GroupBox{Parameters)
    }//Item{
}
