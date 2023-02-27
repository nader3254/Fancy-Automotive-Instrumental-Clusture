import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls




ApplicationWindow {
    width: 1024
    height: 720
    visible: true

    property bool en_menu: cb.mnu
//    property bool _upS: false
//    property bool _downS: false
//    property bool _leftS: false
//    property bool _rightS: false
//    property bool _okS: false

    Rectangle{
        anchors.fill: parent
        color: "#000000"
        FrameLights
        {


            Image {
                id: background
                x: 0
                y: -139
                width: 1024
                height: 849
                source: "qrc:/images/background.png"
                fillMode: Image.PreserveAspectFit


                Flare2
                {
                    id:flr2

                }               
                KmhElement
                {
                    objectName: "kmhElement"
                    x: -130
                    y: 68
                    rotation: 0
                    width: 628
                    height: 591

                    scale: 0.55
                }
                RpmElement
                {
                    objectName: "rpmElement"
                    x: 538
                    y: 71
                    anchors.rightMargin: -1278
                    anchors.bottomMargin: -138
                    anchors.leftMargin: 1278
                    anchors.topMargin: 138
                    scale: 0.54

                }

                //ListView  that can move between uis (music player - world map - whether displayer - gps indicator - call answering - fuel , oil , engine temprature displayer   )
            }

        }
        MidUiNavigator
        {
            id:midnav
            visible: en_menu
            _upS:cb.upS
            _downS:cb.downS
            _okS:cb.okS

        }
        UiNavigator
        {
            id:uinavi


        }
    }
    ControlButtons
    {
        id:cb

    }


}































//Image {
//    id: flare1
//    x: 313
//    y: 105
//    source: "qrc:/images/flare1.png"
//    fillMode: Image.PreserveAspectFit
//    opacity:0
//    NumberAnimation on opacity {
//        id:flare1_animate
//        //target: flare1
//        duration: 0
//        from: 1
//        to: 0


//    }
//    NumberAnimation on opacity {
//        id:flare1_animate2
//        //target: flare1
//        duration: 0
//        from: 0
//        to: 1
//        onFinished: flare1_animate.start()
//    }
//    Timer{

//        id:flare1_tmr
//        objectName: "flare1"
//        interval: 1;running: false  ;repeat: false
//        onTriggered: {

//            flare1_animate.duration=1000
//            flare1_animate2.duration=1000
//            flare1_animate2.start()
//           flare1_tmr.running=false
//        }
//    }
//}
