/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick
import QtQuick.Controls
import Clusture_v2

Rectangle {
    color: "#f75a5a"


    Text {
        width: 550
        height: 290
        text: qsTr("tdfuduyduyd")
        font.pointSize: 20
        anchors.centerIn: parent
        font.family: Constants.font.family
    }

    Text {
        id: text1
        x: 600
        y: 350
        text: qsTr("Text")
        font.pixelSize: 12
    }
}
