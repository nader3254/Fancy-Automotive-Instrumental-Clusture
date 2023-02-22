

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.2
import QtQuick.Controls 6.2
import Clusture
import QtQuick.Studio.Components 1.0

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    color: "#3d3a3a"


    // note that the new elements may be added here

    Rectangle {
        id: mid_down_l
        x: 342
        y: 306
        width: 165
        height: 21
        color: "#ffffff"
        rotation: 0
    }




    Rectangle {
        id: mid_down_r
        x: 506
        y: 306
        width: 241
        height: 21
        color: "#ffffff"
    }

    Rectangle {
        id: mid_down1
        x: 342
        y: 296
        width: 330
        height: 12
        color: "#cac3c3"
    }

    Rectangle {
        id: mid_down2
        x: 365
        y: 287
        width: 287
        height: 9
        color: "#e5e4e4"
    }

    Rectangle {
        id: mid_down3
        x: 372
        y: 254
        width: 274
        height: 33
        color: "#fffefe"
    }

    Rectangle {
        id: mid_down4
        x: 391
        y: 242
        width: 231
        height: 12
        color: "#c8c2c2"
    }

    Rectangle {
        id: mid_down5
        x: 397
        y: 229
        width: 231
        height: 14
        color: "#ffffff"
    }

    Rectangle {
        id: mid_down6
        x: 397
        y: 217
        width: 231
        height: 14
        color: "#ffffff"
    }

    Rectangle {
        id: mid_down7
        x: 397
        y: 204
        width: 231
        height: 14
        color: "#ffffff"
    }

    Rectangle {
        id: mid_down8
        x: 397
        y: 187
        width: 231
        height: 18
        color: "#ffffff"
    }

    Rectangle {
        id: left_down
        x: 2
        y: 235
        width: 340
        height: 188
        color: "#ffffff"
    }

    Rectangle {
        id: left_up
        x: 1
        y: 58
        width: 244
        height: 177
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: mid_up_l
        x: 245
        y: 68
        width: 250
        height: 21
        color: "#ffffff"
    }

    Rectangle {
        id: mid_up_r
        x: 496
        y: 65
        width: 261
        height: 21
        color: "#ffffff"
    }

    Rectangle {
        id: right_left_up
        x: 650
        y: 101
        width: 82
        height: 170
        color: "#ffffff"
        rotation: 25.094
    }

    Rectangle {
        id: left_right_down
        x: 351
        y: 155
        width: 25
        height: 135
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: left_right_up
        x: 274
        y: 88
        width: 77
        height: 153
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: right_down
        x: 675
        y: 229
        width: 341
        height: 182
        color: "#ffffff"
    }

    Rectangle {
        id: right_left_down
        x: 639
        y: 262
        width: 27
        height: 23
        color: "#ffffff"
        rotation: 27.371
    }

    Rectangle {
        id: right_up
        x: 755
        y: 38
        width: 260
        height: 188
        color: "#ffffff"
        rotation: -178.185
    }

    Rectangle {
        id: mid_up1_ll
        x: 349
        y: 115
        width: 146
        height: 42
        color: "#ffffff"
    }

    Rectangle {
        id: mid_up1_r
        x: 526
        y: 140
        width: 131
        height: 14
        color: "#ffffff"
        rotation: 7.92
    }

    Rectangle {
        id: mid_up1_r2
        x: 532
        y: 128
        width: 131
        height: 14
        color: "#ffffff"
        rotation: 7.92
    }

    Rectangle {
        id: mid_up1_r3
        x: 537
        y: 120
        width: 131
        height: 14
        color: "#ffffff"
        rotation: 7.92
    }

    Image {
        id: background
        x: 2
        y: -139
        width: 1024
        height: 849
        source: "../background.png"
        fillMode: Image.PreserveAspectFit



        //        KmhElement
        //        {
        //                        x: -125
        //                        y: 66
        //                        rotation: 0
        //                        width: 628
        //                        height: 591

        //                        scale: 0.55
        //        }
        //        RpmSpeedometer {
        //            x: 538
        //            y: 71
        //            anchors.rightMargin: -1278
        //            anchors.bottomMargin: -138
        //            anchors.leftMargin: 1278
        //            anchors.topMargin: 138
        //            scale: 0.54
        //            BatteryIndicator {
        //                x: 185
        //                y: 473
        //            }
        //            Text {
        //                id: text2
        //                x: 270
        //                y: 371
        //                width: 81
        //                height: 47
        //                color: "#ffffff"
        //                text: qsTr("%PWR x10")
        //                font.pixelSize: 18
        //            }

        //            Item {

        //                id: rpm_needle
        //                x: 285
        //                y: 282
        //                width: 50
        //                height: 50

        //                rotation: -0.384

        //                Image {
        //                    id: rpm_pointer
        //                    x: -80
        //                    y: -31
        //                    width: 310
        //                    height: 300
        //                    source: "../images/pointer.png"
        //                    rotation: -248.459
        //                }
        //            }

        //        }




    }

    Rectangle {
        id: hide1
        x: 368
        y: 281
        width: 7
        height: 9
        color: "#000000"
        rotation: 0
    }

    Rectangle {
        id: hide2
        x: 637
        y: 271
        width: 7
        height: 9
        color: "#000000"
        rotation: 25.884
    }

    Image {
        id: flare1
        x: 313
        y: -35
        source: "../images/flare1.png"
        fillMode: Image.PreserveAspectFit

    }



    Image {
        id: flare2
        x: 272
        y: 58
        width: 465
        height: 365
        source: "../images/flare2.png"
        fillMode: Image.PreserveAspectFit

        Text {
            id: text3
            x: 113
            y: 135
            color: "#ffffff"
            text: qsTr("Welecome On Board")
            font.pixelSize: 27
            font.weight: Font.DemiBold

            Rectangle {
                id: rectangle1
                x: -1
                y: 34
                width: 250
                height: 2
                color: "#ffffff"
            }
        }

        Text {
            id: text4
            x: 147
            y: 30
            color: "#ffffff"
            text: qsTr("Wed, April 2023 18th")
            font.pixelSize: 22
            font.weight: Font.Normal
        }

        Text {
            id: text5
            x: 70
            y: 35
            width: 24
            height: 31
            color: "#ffffff"
            text: qsTr("21")
            font.pixelSize: 22
            font.weight: Font.Normal
        }

        Text {
            id: text6
            x: 94
            y: 33
            color: "#ffffff"
            text: qsTr("ْC")
            font.pixelSize: 24
            font.weight: Font.Normal
        }
    }

























}
