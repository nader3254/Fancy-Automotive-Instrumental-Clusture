import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.3

Rectangle
{
    id:simulator
    anchors.fill: parent
    property string clr:"#ffffff"
    property real speed: 0
    property real speed2: 0
    property real flashModer: 0
    property bool mnu: false

    property bool upS: false
    property bool downS: false
    property bool leftS: false
    property bool rightS: false
    property bool okS: false

    property int  _navigator: 0
    property bool _ennavigator: false

    color: "transparent"

    Timer{
        id:ttt
        interval: 1;repeat: false;running: false
        onTriggered: {
            if(upS==true)
            {

                upS=false
            }
            if(downS==true)
            {

                downS=false
            }
            if(okS==true)
            {

                okS=false
            }

            if(leftS==true)
            {
                if(_navigator>=1)
                {
                    _navigator--;
                    _ennavigator=true
                }


                leftS=false
                console.log("navigator is :",_navigator);
                GraphicsController.openUI(_navigator);
               // t2.start()
            }
            if(rightS==true)
            {
                if(_navigator<4)
                {

                    _navigator++;
                    _ennavigator=true
                }

                rightS=false
                console.log("navigator is :",_navigator)
                GraphicsController.openUI(_navigator);
                //t2.start()
            }
        }
    }
//    Timer
//    {
//        id:t2
//        interval: 1;repeat: true;running: false
//        onTriggered:
//        {

//         _ennavigator=false


//        }
//    }
        Button {
            id:power_on
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 40
            anchors.left: parent.left
            anchors.leftMargin:4
            width: 100
            height: 80
            text: "Start Engine"
            onClicked: F1Animation.startAnimation();
        }
        Button {
            id:speedUp
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 40
            anchors.left: power_on.right
            anchors.leftMargin:4
            width: 100
            height: 80
            text: "kmh UP"
            onClicked: {

                speed=speed+20;
                GraphicsController.setKmhValue(speed);
            }
        }
        Button {
            id:speedDown
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 40
            anchors.left: speedUp.right
            anchors.leftMargin:4
            width: 100
            height: 80
            text: "kmh DOWN"
            onClicked: {

                speed=speed-20;
                GraphicsController.setKmhValue(speed);
            }
        }
        Button {
            id:rpmUp
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 40
            anchors.left: speedDown.right
            anchors.leftMargin:4
            width: 100
            height: 80
            text: "rpm UP"
            onClicked: {


                speed2=speed2+1;
                GraphicsController.setRpmValue(speed2);

            }
        }
        Button {
            id:rpmDown
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 40
            anchors.left: rpmUp.right
            anchors.leftMargin:4
            width: 100
            height: 80
            text: "rpm DOWN"
            onClicked: {

                speed2=speed2-1;
                GraphicsController.setRpmValue(speed2);

            }



       }

        ColorDialog {
            id: cs
            //selectedColor: simulator.color
            onAccepted:
            {

                simulator.clr = currentColor
                GraphicsController.setLightColor(simulator.clr)
                //console.log(simulator.clr)
            }
        }
        Button {
            id:setcolor
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 40
            anchors.left: rpmDown.right
            anchors.leftMargin:4
            width: 100
            height: 80
            text: "light color"
            onClicked: {
                cs.open()
            }

        }
        Button {
            id:flashMode
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 40
            anchors.left: setcolor.right
            anchors.leftMargin:4
            width: 100
            height: 80
            text: "flash mode"
            onClicked: {
                GraphicsController.setFrameFlashSpeed(flashModer)
                if(flashModer==0)
                {
                    flashModer=1;
                }
                else
                {
                    if(flashModer==1)
                    {
                        flashModer=2;
                    }
                    else
                    {
                        flashModer=0;
                    }
                }
            }
        }
        Button {
            id:menu
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 40
            anchors.left: flashMode.right
            anchors.leftMargin:4
            width: 100
            height: 80
            text: "Menu"
            onClicked:
            {
              GraphicsController.closeUis();
              GraphicsController.openMenu();
              mnu=true
            }

        }
        Button {
            id:up
            anchors.bottom: power_on.top
            anchors.bottomMargin: 82
            anchors.left: power_on.right
            anchors.leftMargin:4
            width: 80
            height: 40
            text: "up"
            onClicked:
            {
                upS=true
                ttt.start()
                GraphicsController.menuMoovUp();

            }

        }
        Button {
            id:down
            anchors.bottom: power_on.top
            anchors.bottomMargin: 40
            anchors.left: power_on.right
            anchors.leftMargin:4
            width: 80
            height: 40
            text: "down"
            onClicked:
            {
                downS=true
                ttt.start()
                GraphicsController.menuMoovDown();
            }

        }
        Button {
            id:ok
            anchors.bottom: power_on.top
            anchors.bottomMargin: 40
            anchors.left: down.right
            anchors.leftMargin:4
            width: 100
            height: 82
            text: "ok"
            onClicked:
            {
                okS=true
                GraphicsController.menuSelectCurrItem();

            }

        }
        Button {
            id:left
            anchors.bottom: power_on.top
            anchors.bottomMargin: 82
            anchors.left: ok.right
            anchors.leftMargin:4
            width: 80
            height: 40
            text: ">"
            onClicked:
            {
                leftS=true
                ttt.start()

            }

        }
        Button {
            id:right
            anchors.bottom: power_on.top
            anchors.bottomMargin: 40
            anchors.left: ok.right
            anchors.leftMargin:4
            width: 80
            height: 40
            text: "<"
            onClicked:
            {
                rightS=true
                ttt.start()
            }

        }
        Button {
            id:back
            anchors.bottom: power_on.top
            anchors.bottomMargin: 40
            anchors.left: right.right
            anchors.leftMargin:4
            width: 100
            height: 82
            text: "back"
            onClicked:
            {
               //back callback

            }

        }
        FileDialog
        {
             id: convertFD
             onAccepted:
             {
                console.log(convertFD.folder/*.replace("file:///")*/)
                GraphicsController.setMusicPath(convertFD.folder)
             }

        }
        Button {
            id:m_path
            anchors.bottom: power_on.top
            anchors.bottomMargin: 40
            anchors.left: back.right
            anchors.leftMargin:4
            width: 100
            height: 82
            text: "music path"
            onClicked:
            {
               //back callback
                convertFD.open()

            }

        }
}
