import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.2
import QtQuick.Window 2.2
import QtWinExtras 1.0

Item{
    width:600
    height:400

    ListModel {
        id: colorsModel
        ListElement {
            colorCode: "red"

        }
        ListElement {
            colorCode: "green"
        }
        ListElement {
            colorCode: "blue"
        }
        ListElement {
            colorCode: "orange"
        }
        ListElement {
            colorCode: "white"
        }
        ListElement {
            colorCode: "purple"
        }
        ListElement {
            colorCode: "gray"
        }
        ListElement {
            colorCode: "yellow"
        }
        ListElement {
            colorCode: "purple"
        }
    }

    Row
    {
        anchors.fill: parent
        id:row
        spacing:5


        ListView
        {
            id:groupList
            z:10
            width:200
            height:parent.height
            model:ListModel {
                ListElement { name: "1"; surfaceColor: "gray" }
                ListElement { name: "2"; surfaceColor: "yellow" }
                ListElement { name: "3"; surfaceColor: "blue" }
                ListElement { name: "4"; surfaceColor: "orange" }
                ListElement { name: "6"; surfaceColor: "yellow" }
                ListElement { name: "7"; surfaceColor: "lightBlue" }
            }
            delegate: Rectangle{
                width:parent.width
                height:75
                color:surfaceColor
                Text{
                    anchors.fill: parent;
                    verticalAlignment: Text.AlignVCenter;
                    horizontalAlignment: Text.AlignHCenter;
                    text: name
                }
                MouseArea
                {
                    anchors.fill: parent
                }
            }
        }

        ListView
        {
            id:horizontalList
            height:parent.height
            width:parent.width/2
            model:programmModel.list
            orientation: ListView.Horizontal
            cacheBuffer: 200
            spacing: 3
            delegate:
                ListView{
                interactive: false
                id: verticalList
                width: horizontalList.width/programmModel.count
                height: parent.height
                property int listCount: modelData.count
                model: modelData.list
                spacing:3
                delegate:
                    Rectangle{
                    width: verticalList.width
                    height:verticalList.height/listCount
                    color: "red"
                    border.color: "black"
                    Text{
                        anchors.fill: parent;
                        verticalAlignment: Text.AlignVCenter;
                        horizontalAlignment: Text.AlignHCenter;
                        text: modelData.lessonName
                    }
                    MouseArea
                    {
                        anchors.fill: parent

                    }
                }
            }
        }
    }

}

