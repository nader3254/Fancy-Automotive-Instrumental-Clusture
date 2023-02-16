// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0

import QtQuick 6.2
import QtQuick.Window 6.2
import Clusture

Window {
    width: mainScreen.width
    height: mainScreen.height

    visible: true
    title: "Clusture"


//    ArcItem {
//        id: arc
//        x: 185
//        y: 642
//        width: 645
//        height: 652
//        strokeWidth: 22
//        end: 360
//        strokeColor: "#ffffff"
//        fillColor: "#00000000"



    Screen01 {
        id: mainScreen
        x: -139
        y: -65
    }

}

