import QtQuick 2.15


KmhSpeedometer{
    id:root

    x: 21
    y: 126
 //   rotation: 0

    property int kmhVal: 0
    property int kmh: 0 //this will move the needle
    property int splashCtr: 0

    function setKmh(val)
    {
        needleMoover.interval=5
        let x=kmh_needle.rotation
        if(val>x)
        {
            kmhVal=val+(5*(260/val));
        }
        else
        {
            kmhVal=val+4;
        }
    }

    Timer{
        id:needleMoover
        interval: 1; running: true; repeat: true
        onTriggered:
           {
              if(kmhVal!=kmh_needle.rotation)
              {
                  let x=kmh_needle.rotation
                  if(kmhVal>x)
                  {
                      x++;
                      kmh_needle.rotation=x;
                  }
                  else
                  {
                      x--;
                      kmh_needle.rotation=x;
                  }
              }
           }
        }

    Timer{
        id:needle_runtime_Moover
        interval: 1; running: true; repeat: true
        onTriggered:
        {
            setKmh(kmh)
        }
    }



    FuelIndicator {
        x: 253
        y: 484
    }

    Item {
        id: kmh_needle
        objectName: "kmhPointer"
        x: 264
        y: 310
        width: 50
        height: 50

        rotation: 0

        Image {
            id: kmh_pointer
            x: -164
            y: -44
            width: 310
            height: 322
            source: "../images/pointer.png"
            rotation: -193.507

        }


    }
}
