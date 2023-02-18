import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 200
    height: 100


    Image {
        id: batteryIcon
        x: 52
        y: -5
        width: 50
        height: 52
        source: "../images/batteryIcon.png"
        fillMode: Image.PreserveAspectFit
    }
    Text {
        id: text1
        x: 0
        y: -4
        color: "#ffffff"
        text: qsTr("0")
        font.pixelSize: 24
    }

    Text {
        id: text2
        x: 132
        y: 0
        color: "#ffffff"
        text: qsTr("100")
        font.pixelSize: 24
    }

    Rectangle {
        id: rectangle1
        x: 5
        y: 31
        width: 8
        height: 18
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: rectangle2
        x: 16
        y: 36
        width: 8
        height: 17
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: rectangle3
        x: 27
        y: 38
        width: 8
        height: 18
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: rectangle4
        x: 38
        y: 41
        width: 8
        height: 18
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: rectangle5
        x: 49
        y: 44
        width: 8
        height: 18
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: rectangle6
        x: 61
        y: 45
        width: 8
        height: 18
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: rectangle7
        x: 74
        y: 45
        width: 8
        height: 18
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: rectangle8
        x: 86
        y: 45
        width: 8
        height: 18
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: rectangle9
        x: 99
        y: 44
        width: 8
        height: 18
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: rectangle10
        x: 110
        y: 41
        width: 8
        height: 18
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: rectangle11
        x: 121
        y: 38
        width: 8
        height: 18
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: rectangle12
        x: 132
        y: 35
        width: 8
        height: 18
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: rectangle13
        x: 143
        y: 29
        width: 8
        height: 18
        color: "#ffffff"
        rotation: 0
    }

    Text {
        id: text3
        x: 171
        y: -5
        color: "#ffffff"
        text: qsTr("%")
        font.pixelSize: 16
    }








}
