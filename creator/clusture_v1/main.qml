import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 1080
    height: 600
    visible: true
    title: qsTr("Hello World")



    Rectangle{
        anchors.fill: parent
        color: "#000000"

        //scale: 0.5

//        KmhSpeedometer{

//        }
        RpmSpeedometer{

        }

    }
}
