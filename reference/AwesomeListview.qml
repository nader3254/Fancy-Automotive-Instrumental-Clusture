import QtQuick 2.8
import QtQuick.Controls 2.1

ApplicationWindow {

    visible: true
    id: app
    width: 1280
    height: 720
    color: "#330000"

    PathView {
        id: pathView
        anchors.fill: parent
        model: 6

        delegate: Rectangle {
            id: item
            height: app.height * 0.5
            width: app.width * 0.25

            border.width: 5
            border.color: "#2f2f2f"
            color: "#d2d2d2"

            scale: PathView.itemscale
            z: PathView.z
        }

        interactive: true

        pathItemCount: 5
        preferredHighlightEnd: 0.5
        preferredHighlightBegin: 0.5

        path: Path {
            startX: 0
            startY: app.height * 0.5

            PathAttribute { name: "z"; value: 0 }
            PathAttribute { name: "itemscale"; value: 0.5 }

            PathLine {
                x: app.width * 0.5
                y: app.height * 0.5
            }

            PathAttribute { name: "z"; value: 100 }
            PathAttribute { name: "itemscale"; value: 1 }

            PathLine {
                x: app.width
                y: app.height * 0.5
            }

            PathAttribute { name: "z"; value: 0 }
            PathAttribute { name: "itemscale"; value: 0.5 }
        }
    }
}



/*   great pathview
    Rectangle {
            x: 50; y: 50
            width: 900; height: 600
            color: "grey"

            PathView {
                id: pathView
                anchors.fill: parent
                model: myModel
                delegate: myDelegate
                dragMargin: 300

                snapMode: PathView.SnapToItem
                maximumFlickVelocity: width

                preferredHighlightBegin:0.5
                preferredHighlightEnd:0.5

                clip: true

                path: Path {
                    id:flowViewPath

                    readonly property real yCoord: pathView.height/2

                    startX: 0
                    startY: flowViewPath.yCoord

                    PathAttribute{name:"elementZ"; value: 0}
                    PathAttribute{name:"elementScale"; value: 0.3}

                    PathLine {
                        x: pathView.width*0.5
                        y: flowViewPath.yCoord
                    }

                    PathAttribute{name:"elementZ";value:100}
                    PathAttribute{name:"elementScale";value:1.0}

                    PathLine {
                        x: pathView.width
                        y: flowViewPath.yCoord
                    }

                    PathAttribute{name:"elementZ";value:0}
                    PathAttribute{name:"elementScale";value:0.3}

                    PathPercent{value:1.0}
                }
            }

            Component {
                id: myDelegate
                Rectangle {
                    width: 400; height: 600
                    color: modelColor

                    scale: PathView.elementScale
                    z: PathView.elementZ
                }
            }

            ListModel {
                id: myModel
                ListElement  {modelColor: "red"}
                ListElement  {modelColor: "green"}
                ListElement  {modelColor: "blue"}
                ListElement  {modelColor: "yellow"}
                ListElement  {modelColor: "orange"}
            }

            Rectangle {
                width: parent.width;
                height: 1
                x: 0
                y: flowViewPath.yCoord
                color: "black"
            }
        }
*/
