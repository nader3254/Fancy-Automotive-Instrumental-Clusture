import QtQuick 2.15

Image {
    id: flare2
    x: 272
    y: 195
    width: 465
    height: 365
    source: "../images/flare2.png"
    fillMode: Image.PreserveAspectFit

    property bool mnu: false



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

    opacity:0
    NumberAnimation on opacity {
        id:t1_animate
        running: false
        duration: 0
        from: 1
        to: 0
        onFinished:
        {

            gotoui.start()

        }


    }
    NumberAnimation on opacity {
        id:t1_animate2
        running: false
        duration: 0
        from: 0
        to: 1
        onFinished:
        {
            t1_animate.start()
        }
    }

    Timer
    {
        objectName: "flare2"
        interval: 1;running: false;repeat: false
        onTriggered:
        {
            t1_animate.duration=4000
            t1_animate2.duration=1000
            t1_animate2.start()


        }
    }

    Timer
    {

        id:gotoui
        interval: 1;running: false;repeat: false
        onTriggered:
        {

            GraphicsController.openUI(3);
           // t1_animate2.running=false
          //  t1_animate.running=false



        }
    }
}



//    Text {
//        id: text4
//        x: 147
//        y: 30
//        color: "#ffffff"
//        text: qsTr("Wed, April 2023 18th")
//        font.pixelSize: 22
//        font.weight: Font.Normal
//    }

//    Text {
//        id: text5
//        x: 70
//        y: 35
//        width: 24
//        height: 31
//        color: "#ffffff"
//        text: qsTr("21")
//        font.pixelSize: 22
//        font.weight: Font.Normal
//    }

//    Text {
//        id: text6
//        x: 94
//        y: 33
//        color: "#ffffff"
//        text: qsTr("ْC")
//        font.pixelSize: 24
//        font.weight: Font.Normal
//    }
