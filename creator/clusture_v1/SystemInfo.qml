import QtQuick 2.15

Rectangle{
    //anchors.fill: parent
    color: "transparent"
    Image
    {
        id: name
        anchors.fill: parent
        source: "qrc:/images/logo.png"
        fillMode: Image.Stretch
    }
    Text {
        id: t2
        anchors.top: name.bottom
        anchors.topMargin: -30
        anchors.left: parent.left
        anchors.leftMargin: parent.width/2 - t2.width/2
        color: "white"
        font.pixelSize: 20
        text: "Nader hany"
    }
}
