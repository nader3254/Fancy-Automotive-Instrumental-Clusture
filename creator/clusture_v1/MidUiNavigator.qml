import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Dialogs
import QtQml.Models
import QtQml 2.15

Rectangle
{
    id:root
    width: 280
    height: 220
    color: "transparent" //for test
   // anchors.centerIn: parent
    x:(parent.width/2)-143
    y:55

    scale: 0.8
    property bool _fcs: false
    property bool _upS: false
    property bool _downS: false
    property bool _leftS: false
    property bool _rightS: false
    property bool _okS: false

    Timer{
        interval: 1;repeat: true;running: true
        onTriggered: {
            if(_upS==true)
            {
                pv.decrementCurrentIndex()
                //_upS=false
            }
            if(_downS==true)
            {
                pv.incrementCurrentIndex()
               // _downS=false
            }
            if(_okS==true)
            {
                console.log("else selected is",pvModel.get(pv.currentIndex).name)
               // _okS=false

            }
        }
    }


    ListModel {
        id:pvModel

        ListElement {
            name: "Music Player"
            clr: "qrc:/images/music.png"
        }
        ListElement {
            name: "Weather Forecast"
            clr: "qrc:/images/weather.png"
        }
        ListElement {
            name: "GPS Map"
            clr: "qrc:/images/gps.png"
        }
        ListElement {
            name: "Phone Calls"
            clr: "qrc:/images/calls.png"
        }
        ListElement {
            name: "Engine Status"
            clr: "qrc:/images/status.png"
        }

    }

    Path {
                    id: pathElement
                    startX: parent.x+150; startY: parent.y+30*4
                    PathAttribute { name: "opacity"; value: 1 }
                    PathAttribute { name: "scale"; value: 2 }
                    PathAttribute { name: "height"; value: 36 }


                    //PathAttribute { name: "color"; value: 000000 }


                    PathLine { x: parent.x+150; y: parent.y+30*2 }
                    PathAttribute { name: "opacity"; value: 0.15 }
                    PathAttribute { name: "scale"; value: 1.5}
                    PathAttribute { name: "height"; value: 36 }
                    //PathAttribute { name: "color"; value: 000000 }

                    PathLine { x: parent.x+150; y: parent.y+30*1 }
                    PathAttribute { name: "opacity"; value: 0.15 }
                    PathAttribute { name: "scale"; value: 0.5 }
                    PathAttribute { name: "height"; value: 36 }
                    //PathAttribute { name: "color"; value: 111111 }



                    PathLine { x: parent.x+150; y: parent.y+30*9 }
                    PathAttribute { name: "opacity"; value: 0.1 }
                    PathAttribute { name: "scale"; value: 1.5 }
                    PathAttribute { name: "height"; value: 36 }
                    //PathAttribute { name: "color"; value: 000000 }


                    PathLine { x: parent.x+150; y: parent.y+30*10 }
                    PathAttribute { name: "opacity"; value: 0.1}
                    PathAttribute { name: "scale"; value: 0.5 }
                    PathAttribute { name: "height"; value: 36 }
                    //PathAttribute { name: "color"; value: 000000 }

        }

    Component{
        id:dlgt2


            Rectangle
            {

                width:root.width/2
                height: PathView.height
                //color: "#111111"
                opacity:  PathView.opacity
                scale: PathView.scale
                radius: 10
                color: "transparent"
                    Rectangle
                    {
                        id:img
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.leftMargin: 5
                        anchors.topMargin: 3
                        width: 30
                        height: 30
                        radius: 2
                        color: "transparent"
                        Image {
                            id: kmh_pointer
                            anchors.fill: parent
                            source: clr


                        }

                    }

                    Text
                    {
                        id: text
                        anchors.left: img.right
                        anchors.margins: 5
                        anchors.top: parent.top
                        anchors.topMargin: 8
                        text: name
                        color: "#ffffff"
                    }


                MouseArea
                {
                    anchors.fill: parent
                    onClicked:
                    {
                        pv.focus=true
                     }
                }


            }

    }

    PathView
    {
        id: pv
        model: pvModel
        delegate:  dlgt2
        path:pathElement
        focus: true
        Keys.onLeftPressed: decrementCurrentIndex()
        Keys.onRightPressed: incrementCurrentIndex()
        Keys.onEnterPressed: {

            console.log("else selected is",pvModel.get(currentIndex).name)
        }
        highlight: Rectangle {
            radius: 18
            width: root.width; height: 70
            opacity: 0.2
            color: "lightblue"
        }
        preferredHighlightBegin: 4
        preferredHighlightEnd: 4

    }



}
