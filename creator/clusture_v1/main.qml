import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls

ApplicationWindow {
    width: 1920
    height: 1080
    visible: true


    Rectangle {
        id: rect
        anchors.fill: parent
        color: "#3d3a3a"

       // scale: 0.8
    // note that the new elements may be added here
    Image {
        id: background
        x: 0
        y: 0
        width: 1940
        height: 1080
        source: "qrc:/images/background.png"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: text1
        x: 300
        y: 516
        width: 81
        height: 47
        color: "#ffffff"
        text: qsTr("Km/h")
        font.pixelSize: 17
    }

    Text {
        id: text2
        x: 1548
        y: 506
        width: 81
        height: 47
        color: "#ffffff"
        text: qsTr("%PWR x10")
        font.pixelSize: 18
    }

    KmhElement
    {

    }

//    RpmSpeedometer {
//        x: 1278
//        y: 135
//        anchors.rightMargin: -1278
//        anchors.bottomMargin: -138
//        anchors.leftMargin: 1278
//        anchors.topMargin: 138

//        BatteryIndicator {
//            x: 185
//            y: 473
//        }
//        Item {

//            id: rpm_needle
//            x: 285
//            y: 282
//            width: 50
//            height: 50

//            rotation: -0.384

//            Image {
//                id: rpm_pointer
//                x: -80
//                y: -31
//                width: 310
//                height: 300
//                source: "../images/pointer.png"
//                rotation: -248.459
//            }
//        }
//    }

//    Image {
//        id: flare2
//        x: 573
//        y: 148
//        width: 750
//        height: 578
//        source: "../images/flare2.png"
//        fillMode: Image.PreserveAspectFit

//        Text {
//            id: text3
//            x: 206
//            y: 213
//            color: "#ffffff"
//            text: qsTr("Welecome On Board")
//            font.pixelSize: 40
//            font.weight: Font.DemiBold

//            Rectangle {
//                id: rectangle1
//                x: 0
//                y: 58
//                width: 380
//                height: 4
//                color: "#ffffff"
//            }
//        }

//        Text {
//            id: text4
//            x: 253
//            y: 21
//            color: "#ffffff"
//            text: qsTr("Wed, April 2023 18th")
//            font.pixelSize: 30
//            font.weight: Font.Normal
//        }

//        Text {
//            id: text5
//            x: 68
//            y: 29
//            color: "#ffffff"
//            text: qsTr("21")
//            font.pixelSize: 35
//            font.weight: Font.Normal
//        }

//        Text {
//            id: text6
//            x: 112
//            y: 21
//            color: "#ffffff"
//            text: qsTr("ْC")
//            font.pixelSize: 38
//            font.weight: Font.Normal
//        }
//    }

//    Image {
//        id: flare1
//        x: 770
//        y: -111
//        source: "../images/flare1.png"
//        fillMode: Image.PreserveAspectFit
//    }

//    Text {
//        id: text7
//        x: 645
//        y: 622
//        color: "#ffffff"
//        text: qsTr("883Km")
//        font.pixelSize: 30
//        font.weight: Font.Normal
//    }

//    Text {
//        id: text8
//        x: 1191
//        y: 628
//        color: "#ffffff"
//        text: qsTr("0Km")
//        font.pixelSize: 30
//        font.weight: Font.Normal
//    }
}
}
