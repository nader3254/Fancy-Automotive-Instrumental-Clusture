import QtQuick 2.15


KmhSpeedometer{
    id:root
    property int kmhVal: 0
    property int kmh: 0
    property int splashCtr: 0
    x: 21
    y: 126
 //   rotation: 0



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

//    Timer{
//        //splash animator
//        id:sp_animator
//        interval: 1; running: true; repeat: true
//        onTriggered:
//        {
//            //needleMoover.interval=100
//        //    setKmh(180)
////            if(splashCtr<1)
////            {
////              //  needleMoover.interval=1
////                setKmh(260)
////                if(kmh_needle.rotation>260)
////                {
////                    splashCtr++;
////                }
////            }
////            else
////            {
////               // needleMoover.interval=20
////                setKmh(0)
////                sp_animator.stop()
////            }
//        }


//    }

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
//        transitions: Transition {
//            ParallelAnimation{


//            }
//            ParallelAnimation{

//            }
//        }
//        }
//            RotationAnimation{
//                duration:1000
//                 direction: RotationAnimation.Counterclockwise
//            }
//    RotationAnimation{
//        id:clokwise
//        duration:1000

//        direction: RotationAnimation.Clockwise
//    }
//    RotationAnimation{
//        id:counter_clokwise
//        duration:1000
//        direction: RotationAnimation.Counterclockwise
//    }
//}


}
}
