import QtQuick 2.15

RpmSpeedometer {


    property int rpmVal: 0
    property int rpm:0//this will move the needle
   // property int splashCtr: 0

    function setRpm(val)
    {
        switch(val)
        {
        case -1:rpmVal=-20  ;break;
        case 0:rpmVal=-42   ;break;
        case 1:rpmVal=-62   ;break;
        case 2:rpmVal=-80   ;break;
        case 3:rpmVal=-102  ;break;
        case 4:rpmVal=-122  ;break;
        case 5:rpmVal=-135  ;break;
        case 6:rpmVal=-154  ;break;
        case 7:rpmVal=-173  ;break;
        case 8:rpmVal=-189  ;break;
        case 9:rpmVal=-205  ;break;
        case 10:rpmVal=-222;break;
        case 11:rpmVal=-242;break;
        case 12:rpmVal=-265;break;
        }

        needleMoover.interval=5

    }

    Timer{
        id:needleMoover
        interval: 1; running: true; repeat: true
        onTriggered:
           {
              if(rpmVal!=rpm_needle.rotation)
              {
                   let x=rpm_needle.rotation

                  if(rpmVal>x)
                  {
                      x++;
                      rpm_needle.rotation=x;
                  }
                  else
                  {
                      x--;
                      rpm_needle.rotation=x;
                  }
              }
           }
        }

    Timer{
        id:needle_runtime_Moover
        interval: 1; running: true; repeat: true
        onTriggered:
        {
            setRpm(rpm)
        }
    }





    BatteryIndicator {
        x: 185
        y: 473
    }
    Text {
        id: text2
        x: 270
        y: 371
        width: 81
        height: 47
        color: "#ffffff"
        text: qsTr("%PWR x10")
        font.pixelSize: 18
    }

    Item {

        id: rpm_needle
        objectName: "rpmPointer"
        x: 285
        y: 282
        width: 50
        height: 50

        rotation: 0

        Image {
            id: rpm_pointer
            x: -80
            y: -31
            width: 310
            height: 300
            source: "../images/pointer.png"
            rotation: -248.459
        }
    }

}
