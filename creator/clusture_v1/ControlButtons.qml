import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Dialogs

Rectangle
{
    id:simulator
    anchors.fill: parent
    property string clr:"#ffffff"
    property real speed: 0
    property real speed2: 0
    property real flashModer: 0
    color: "transparent"

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

                simulator.clr = selectedColor
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
}
