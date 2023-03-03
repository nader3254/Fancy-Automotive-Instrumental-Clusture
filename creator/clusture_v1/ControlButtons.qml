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
    property bool ss: true

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
    Timer
    {
        id:t4
        interval: 4000;repeat: true;running: true
        onTriggered:
        {
            if(ss===true)
            {
                aa1.running=false
                aa2.running=true

            }
            else
            {
                aa2.running=false
                aa1.running=true
            }




        }
    }
        Rectangle
        {
            id:power_on
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 40
            anchors.left: parent.left
            anchors.leftMargin:4
            width: 100
            height: 80
            color: "#c5db1a"
            Text
            {
                id: name
                anchors.centerIn: parent
                color: "white"
                font.pixelSize: 16
                text: "Start Engine"
            }
           MouseArea{
               anchors.fill: parent
               onClicked:{
                   if(ss===true)
                   {
                     F1Animation.startAnimation();
                     ss=false;
                       aa1.running=false
                       aa2.running=true

                   }
                   else
                   {
                       F1Animation.stopEngine();
                       GraphicsController.closeUis();
                       ss=true;
                       aa2.running=false
                       aa1.running=true
                   }
               }
           }
          ColorAnimation on color {id:aa1;running: false; from:"#000000"; to: "#1adb51"; duration: 2000 ;
              onFinished:
              {
                  aa3.start()
              }
          }
          ColorAnimation on color {id:aa3;running: false; from:"#1adb51"; to: "#000000"; duration: 2000 ;}
          ColorAnimation on color {id:aa2; running: true;from:"#000000"; to: "#db1a68"; duration: 2000
          onFinished:
          {
               aa4.start()
          }
          }
          ColorAnimation on color {id:aa4;running: false; from:"#db1a68"; to: "#000000"; duration: 2000 ;}
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

        property string tiimg: ""
        Timer
        {
            id:tochange
            interval: 1;running: false;repeat: false
            onTriggered:
            {

            }
        }

        ComboBox {
            id:combo
            anchors.bottom: power_on.top
            anchors.bottomMargin: 40
            anchors.left: m_path.right
            anchors.leftMargin:4
            editable: false
            width:350
            model: ListModel {
                id: model
                ListElement { text: "qrc:/images/weather/cloudy.png" }
                ListElement { text: "qrc:/images/weather/day_night.png" }
                ListElement { text: "qrc:/images/weather/eclipse.png" }
                ListElement { text: "qrc:/images/weather/humidity.png" }
                ListElement { text: "qrc:/images/weather/moon_cloudy.png" }
                ListElement { text: "qrc:/images/weather/moon.png" }
                ListElement { text: "qrc:/images/weather/moon_2.png" }
                ListElement { text: "qrc:/images/weather/rain.png" }
                ListElement { text: "qrc:/images/weather/rainy-day.png" }
                ListElement { text: "qrc:/images/weather/sun.png" }
                ListElement { text: "qrc:/images/weather/sun_cloudy2.png" }
                ListElement { text: "qrc:/images/weather/sun_cloudy.png" }
                ListElement { text: "qrc:/images/weather/sunny.png" }

            }
            onAccepted:
            {

              // GraphicsController.
            }
            onCurrentIndexChanged: {

            }
            onCurrentTextChanged:
            {

                tiimg =model.get(currentIndex).text;
//                tochange.start()

                let weather=37;let rp=50.7;
                let country="Egypt";let city="Naser City";
                let status="it will be rainy today";
                GraphicsController.setWeather(weather,model.get(currentIndex).text,country,city,status,rp)

            }

            Text{
                anchors.bottom: parent.top
                anchors.bottomMargin: 5
                color: "white"
                text: "select weather image"
                font.pixelSize: 16
            }
        }
}
