import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle
{
    id:root
    width: 275
    height: 220
    color: "transparent" //for test
    objectName: "ui navigator"
    visible: false
    x:(parent.width/2)-143
    y:87
    property int ui_curr: 0
    property bool navigate: false
    Timer
    {
        id:navigator_moover
        interval: 1;running: true;repeat: true
        onTriggered:
        {
            if(navigate===true)
            {
                switch(ui_curr)
                {
                case 0: stack.push("SystemInfo.qml");break;
                case 1: stack.push("CallAnswering.qml");break;
                case 2: stack.push("GpsMap.qml");break;
                case 3: stack.push("WeatherForecast.qml",{"clk":true});break;
                case 4: stack.push("MusicPlayer.qml");break;
                }
                navigate=false
            }
        }
    }

    StackView {
           id: stack
           initialItem: "SystemInfo.qml"
           anchors.fill: parent


           pushEnter: Transition
           {
               ParallelAnimation
               {
                   NumberAnimation { property: "opacity";from: 0; to: 1.0; duration: 800 }
                   NumberAnimation { property: "scale";from: 0; to:1.0; duration: 300 }
               }
           }

       }

}



//           pushExit: Transition {
//               ParallelAnimation{
//                   NumberAnimation { property: "opacity";from: 1;  to: 0.0; duration: 800 }
//                   NumberAnimation { property: "scale";from: 1;  to: 0.0; duration: 800 }
//               }


//           }
//           pushEnter:  Transition {
//               XAnimator {
//                   from: (stack.mirrored ? -1 : 1) * -stack.width
//                   to: 0
//                   duration: 1000
//                   easing.type: Easing.OutCubic
//               }
//           }
//           pushExit: Transition {
//               XAnimator {
//                   from: 0
//                   to: (control.mirrored ? -1 : 1) * control.width
//                   duration:1000
//                   easing.type: Easing.OutCubic
//               }
//           }
