import QtQuick 2.15

Rectangle{

    id:root
    objectName: "weather UI"
    color: "transparent"
    property string date: "Wed. April 18th"
    property string time: "16:22"
    property string weather:"21"
    property string w_image: "qrc:/images/weather/sun_cloudy.png"
    property string country: "Egypt"
    property string city: "Nasr City "
    property string rainPercent: "20"
    property string weatherInfo: " It is sunny today"
    property bool clk: true

    Timer
    {
     id:clockUpdater
     interval: 1;running: clk;repeat: true
     onTriggered:
     {
        if(root.opacity===1)
        {
            GraphicsController.updateClock();
        }


     }
    }

    Text
    {
        id: _date
        anchors.left: parent.left
        anchors.leftMargin: ((parent.width/2)-(width/2))
        color: "white"
        text: date
        font.pixelSize: 26
    }

    Text {
        id: _time
        anchors.top: parent.top
        anchors.topMargin: 3
        anchors.left: parent.right
        anchors.leftMargin:  -30
        color: "white"
        text: time
        font.pixelSize: 16
    }
    Text {
        id: _weather
        anchors.top: parent.top
        anchors.topMargin: 3
        anchors.right: parent.left
        anchors.rightMargin: 22
        color: "white"
        text:weather
        font.pixelSize: 18
    }
    Text {
        id: _weather2
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.left: _weather.right
        anchors.leftMargin: 2
        color: "white"
        text:"ْ "+"c"
        font.pixelSize: 24
    }
    Image
    {
        id:i2
        scale: 0.5
       // anchors.fill: parent
        width: parent.width-100
        height: 180
        anchors.left:  parent.left
        anchors.leftMargin: ((parent.width/2)-(i2.width/2))
        source: w_image
        fillMode: Image.Stretch
    }
    Text {
        id: _country
        anchors.top: i2.bottom
        anchors.topMargin: -15
        anchors.left: parent.left
        anchors.leftMargin: 15
        color: "white"
        text: country
        font.pixelSize: 18
    }
    Text {
        id: _city
        anchors.top: i2.bottom
        anchors.topMargin: -10
        anchors.left: _country.right
        anchors.leftMargin: 10
        color: "white"
        text:city
        font.pixelSize: 16
    }
    Image
    {
        id:_rainIndication
       // scale: 0.6
        width: 40
        height: 40
        anchors.top: i2.bottom
        anchors.topMargin: -15
        anchors.right:   parent.right
        anchors.rightMargin: 5
        source: "qrc:/images/weather/umbrella.png"
        fillMode: Image.Stretch
    }

    Text {
        id: _rain_indicatorTxt
        anchors.top: i2.bottom
        anchors.topMargin: -10
        anchors.right: _rainIndication.left
        anchors.rightMargin: 2
        color: "white"
        text:rainPercent+"%"
        font.pixelSize: 22
    }
    Text {
        id: weatherInfoText
        anchors.top: i2.bottom
        anchors.left: parent.left
        anchors.topMargin: 60
        anchors.leftMargin: ((parent.width/2)-(weatherInfoText.width/2))
        color: "white"
        text: weatherInfo
        font.pixelSize: 24
    }
}
