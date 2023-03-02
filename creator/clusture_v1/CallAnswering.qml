import QtQuick 2.15
import QtGraphicalEffects 1.0

Rectangle{
    //anchors.fill: parent
    objectName: "callerUI"
    color: "transparent"

    property string callerIMG : "qrc:/images/user(3).png"
    property string callerName: "Nader"

    property bool oppened: false

//    onOpacityChanged:
//    {

//        if(oppened==true)
//        {
//            callMidAnimation.start()

//        }
//        else
//        {
//            callMidAnimation.stop()
//        }

//        oppened=!oppened
//    }

    Rectangle
    {
        width:parent.width
        height: 300
        color: "transparent"


        Image
        {
            id:i2
            scale: 0.6
           // anchors.fill: parent
            width: parent.width-100
            height: 180
            anchors.left:  parent.left
            anchors.leftMargin: ((parent.width/2)-(i2.width/2))
            source: callerIMG
            fillMode: Image.Stretch
        }
        Text {
            id: _callerName
            anchors.top: i2.bottom
            anchors.topMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: 10
            color: "white"
            text:qsTr(callerName)
            font.pixelSize: 22
        }
        Text {
            id: callerTmp
            anchors.top: i2.bottom
            anchors.left: _callerName.right
            anchors.topMargin: 5
            color: "white"
            text: qsTr(" is calling ....")
            font.pixelSize: 20
        }
        Rectangle
        {
            id:answerButton
            anchors.top: callerTmp.bottom
            anchors.topMargin: 40
            anchors.right: parent.right
            anchors.rightMargin: 40
            width: 50
            height: 50
            radius: 25
            color:"#03fc52"
            Image
            {
                anchors.fill: parent
                scale: 0.6
                source: "qrc:/images/call_da.png"
                fillMode: Image.Stretch
            }
            MouseArea
            {
                anchors.fill: parent
                onClicked:
                {
                    a2.start()
                    console.log("call accepted")

                }
            }
            NumberAnimation on opacity
            {
                id:a2
                duration: 200
                from: 0
                to: 1
            }

        }
        Rectangle
        {
            id:middleImg
            anchors.top: callerTmp.bottom
            anchors.topMargin: 40
            anchors.left:parent.left
            anchors.leftMargin:((parent.width/2)-(middleImg.width/2))
            opacity: 0
            width: 50
            height: 50
            radius: 25
            color:"transparent"
            Image
            {
                anchors.fill: parent
                scale: 0.6
                source: "qrc:/images/calls.png"
                fillMode: Image.Stretch
            }
            PropertyAnimation on opacity {
                id:aMA
              //  running: false
                duration: 2000
                from: 1
                to: 0
                onFinished:
                {
                    callMidAnimation.start()

                }


            }
            PropertyAnimation on opacity {
                id:callMidAnimation
                //running: false
                duration: 2000
                from: 0
                to: 1
                onFinished: {
                    aMA.start()
                }
            }
        }
        Rectangle
        {
            id:rejectAnswer
            anchors.top: callerTmp.bottom
            anchors.topMargin: 40
            anchors.left: parent.left
            anchors.leftMargin: 40
            width: 50
            height: 50
            radius: 25
            color:"#fc0341"
            Image
            {
                anchors.fill: parent
                scale: 0.6
                source: "qrc:/images/call_da.png"
                fillMode: Image.Stretch
            }
            MouseArea
            {
                anchors.fill: parent
                onClicked:
                {
                    a3.start()
                    console.log("call rejected")
                }
            }
            NumberAnimation on opacity
            {
                id:a3
                duration: 200
                from: 0
                to: 1
            }
        }

    }
}
