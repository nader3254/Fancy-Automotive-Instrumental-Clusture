import QtQuick 2.15
import QtMultimedia 5.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15


Rectangle{
   // anchors.fill: parent
    id:root
    color: "transparent"
    objectName: "Music player"
    property var musicmodel: []
    property bool _play: false
    property bool toAdd: false
    property string s_toAdd: ""
    property string s2_toAdd: ""
    Timer
    {
        id:tmry
        interval: 2;running: true;repeat: true
        onTriggered:
        {
            if(toAdd==true)
            {

                let x=s_toAdd.split("\n")
                let y=s2_toAdd.split("\n")

                for(let i in x)
                {
                    if(x[i]!="")
                    {
                        myModel.append({"name":x[i],"source":y[i]})
                        console.log(x[i])
                    }


                }
                s_toAdd=""
                s2_toAdd=""
                toAdd=false
            }
        }
    }

//      MouseArea {
//          anchors.fill: parent
//          onPressed:  {  }
//      }
    ListModel
    {
         id :myModel
//         ListElement{
//             name:"ahaxfdjghasodjvbskdvbsdkjvfbkjdijevgjdhfgvkfgbkeadbfehdrvgoedrhgorhfgleihglaeihgleirgeakrfglark;hg/kflgl;kfs"
//             source:"fuck you"
//         }


    }

    onMusicmodelChanged: {
        console.log("model is",musicmodel)
    }


    Item  {

        anchors.fill: parent
        Audio
        {
                id: playMusic
                source: ""
        }
        Rectangle
        {
            id:hdr
            width: parent.width
            height: 30
            color: "transparent"
            anchors.top: parent.top
            anchors.left: parent.left

            Rectangle
            {
                id: imm
                width: 30
                height: parent.height
                anchors.left: parent.left
                anchors.leftMargin: 10
                color: "transparent"
                Image
                {
                    id: immc
                    anchors.fill: parent
                    source: "qrc:/images/music2.png"
                    fillMode: Image.Stretch
                }
            }
            Text {
                id: hdrtxt
                anchors.left:  imm.right
                anchors.leftMargin: 8
                text: qsTr("Music Player")
                color: "white"
                font.pixelSize:20
            }

            Rectangle
            {
                id: underln
                anchors.top: imm.bottom
                anchors.topMargin:  3
                opacity: 0.8
                width: parent.width
                height: 1
                color: "white"
            }

        }
        /***************************************************END OF HEADER**********************************************/

    ListView
    {

      id:myList
      highlightMoveDuration: 1000
      anchors.top: hdr.bottom
      anchors.topMargin: 25
      model: myModel
      width: 275;height: 130
      highlight: Rectangle { color: "#03fcf0"; radius: 5 ;opacity: 0.3;}


      delegate: Item {
          id :dlgt
          height:25
          width:root.width
          Rectangle
          {
              id: im
              width: 24
              height: 25
              anchors.left: parent.left
              anchors.leftMargin: 10
              color: "transparent"
              Image
              {
                  id: imc
                  anchors.fill: parent
                  source: "qrc:/images/music.png"
                  fillMode: Image.Stretch
              }
          }

          Flickable
          {
             id:flk
             height: parent.height
             width: parent.width-50
             flickableDirection:  Flickable.HorizontalFlick
             clip: true
             contentWidth: nn.width
             contentHeight: nn.height
             anchors.left: im.right
             anchors.leftMargin: 5

              TextEdit
              {
                 id: nn

                 width: 700
                 text: name
                 color: "white"
                 font.pixelSize: 16

                 wrapMode:  TextEdit.Wrap
                 onTextChanged: {
                     if (text.length > 40) {
                         timer.start()
                     } else {
                         timer.stop()
                     }
                 }
              }
              Timer
              {
                  id: timer
                  interval: 50
                  running: false
                  repeat: true

                  onTriggered:
                  {
                      if (flk.contentX >= flk.contentWidth - flk.width)
                      {
                          flk.contentX = 0
                      }
                      else
                      {
                          flk.contentX += 1
                      }
                  }
               }
          }


          MouseArea
          {
              anchors.fill: parent
              onClicked: myList.currentIndex=index
          }

      }

    }

    /***************************************************FOOTER**********************************************/
    Rectangle
    {

        width: parent.width
        height: 50

        color: "transparent"
      //  border.color: "white"
        anchors.top: myList.bottom
        anchors.topMargin: 60
        anchors.left: parent.left
        Rectangle{
            id:musicSlider
            width: parent.width
            height: 4
            color: "#03fcf0"

        }

        Rectangle
        {
            id:play_btn
            anchors.centerIn: parent
            anchors.top: musicSlider.bottom
            anchors.topMargin: 20
            color: "transparent"
            width: 45
            height: 45
            radius: 45/2
            opacity: 1
            Image
            {
                id:i2
                scale: 0.84
                anchors.fill: parent
                source:"qrc:/images/play2.png"
                fillMode: Image.Stretch
            }
            NumberAnimation on opacity
            {
                id:a2
                duration: 200
                from: 0
                to: 1
            }
            MouseArea
            {
                anchors.fill: parent
                onClicked:
                {

                    if(_play==true)
                    {
                        playMusic.play()
                        i2.source= "qrc:/images/pause.png"
                        _play=false
                    }
                    else
                    {
                        playMusic.pause()
                        i2.source= "qrc:/images/play2.png"
                        _play=true
                    }

                    a2.start()
                }
            }
        }

        Rectangle
        {
            id:next_btn
           anchors.left: play_btn.right
           anchors.leftMargin: 5
            anchors.top: musicSlider.bottom
            anchors.topMargin: 3
            color: "transparent"
            width: 45
            height: 45
            radius: 45/2
            opacity: 1
            Image
            {
                id:i3
                scale: 0.64
                anchors.fill: parent
                source:"qrc:/images/next.png"
                fillMode: Image.Stretch
            }
            NumberAnimation on opacity
            {
                id:a3
                duration: 200
                from: 0
                to: 1
            }
            MouseArea
            {
                anchors.fill: parent
                onClicked:
                {

                    a3.start()
                    myList.incrementCurrentIndex()
                    console.log(myModel.get(myList.currentIndex).source)
                    playMusic.source=myModel.get(myList.currentIndex).source
                    playMusic.play()

                }
            }
        }


        Rectangle
        {
            id:prev_btn
            anchors.right: play_btn.left
            anchors.rightMargin: 5
            anchors.top: musicSlider.bottom
            anchors.topMargin: 3
            color: "transparent"
            width: 45
            height: 45
            radius: 45/2
            opacity: 1
            Image
            {
                id:i4
                scale: 0.64
                anchors.fill: parent
                source:"qrc:/images/previous.png"
                fillMode: Image.Stretch
            }
            NumberAnimation on opacity
            {
                id:a4
                duration: 200
                from: 0
                to: 1
            }
            MouseArea
            {
                anchors.fill: parent
                onClicked:
                {

                    a4.start()
                    myList.decrementCurrentIndex()
                    console.log(myModel.get(myList.currentIndex).source)
                    playMusic.source=myModel.get(myList.currentIndex).source
                    playMusic.play()
                }
            }
        }


    }
    }

}















/*

*/





















//        Rectangle
//        {
//            id: imm2
//            width: 30
//            height: parent.height
//            anchors.left: parent.left
//            anchors.leftMargin: 10
//            color: "transparent"
//            Image
//            {
//                id: immc2
//                anchors.fill: parent
//                source: "qrc:/images/music2.png"
//                fillMode: Image.Stretch
//            }
//        }
//        Text {
//            id: hdrtxt2
//            anchors.left:  imm2.right
//            anchors.leftMargin: 8
//            text: qsTr("Music Player")
//            color: "white"
//            font.pixelSize:20
//        }

//        Rectangle
//        {
//            id: underln2
//            anchors.top: imm.bottom
//            anchors.topMargin:  3
//            opacity: 0.8
//            width: parent.width
//            height: 1
//            color: "white"
//        }
