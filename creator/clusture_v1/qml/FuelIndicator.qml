import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 200
    height: 100

    Image {
        id: fuelIcon
        x: 64
        y: -12
        width: 31
        height: 56
        source: "../images/fuelIcon.png"
        fillMode: Image.PreserveAspectFit
    }
    Text {
        id: text1
        x: -1
        y: -5
        color: "#ffffff"
        text: qsTr("E")
        font.pixelSize: 24
    }

    Text {
        id: text2
        x: 138
        y: -5
        color: "#ffffff"
        text: qsTr("F")
        font.pixelSize: 24
    }

    Rectangle {
        id: rectangle1
        x: 0
        y: 28
        width: 8
        height: 18
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: rectangle2
        x: 11
        y: 33
        width: 8
        height: 17
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: rectangle3
        x: 22
        y: 35
        width: 8
        height: 18
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: rectangle4
        x: 33
        y: 38
        width: 8
        height: 18
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: rectangle5
        x: 44
        y: 41
        width: 8
        height: 18
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: rectangle6
        x: 56
        y: 42
        width: 8
        height: 18
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: rectangle7
        x: 69
        y: 42
        width: 8
        height: 18
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: rectangle8
        x: 81
        y: 42
        width: 8
        height: 18
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: rectangle9
        x: 94
        y: 41
        width: 8
        height: 18
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: rectangle10
        x: 105
        y: 38
        width: 8
        height: 18
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: rectangle11
        x: 116
        y: 35
        width: 8
        height: 18
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: rectangle12
        x: 127
        y: 32
        width: 8
        height: 18
        color: "#ffffff"
        rotation: 0
    }

    Rectangle {
        id: rectangle13
        x: 138
        y: 26
        width: 8
        height: 18
        color: "#ffffff"
        rotation: 0
    }


}
