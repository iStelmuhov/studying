import QtQuick 2.4



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
            z:2
            width:200
            height:parent.height
            // highlight: highlightComponent
            focus: true
            model:ListModel {
                ListElement { name: "Mercury"; surfaceColor: "gray" }
                ListElement { name: "Venus"; surfaceColor: "yellow" }
                ListElement { name: "Earth"; surfaceColor: "blue" }
                ListElement { name: "Mars"; surfaceColor: "orange" }
                ListElement { name: "Jupiter"; surfaceColor: "orange" }
                ListElement { name: "Saturn"; surfaceColor: "yellow" }
                ListElement { name: "Uranus"; surfaceColor: "lightBlue" }
                ListElement { name: "Neptune"; surfaceColor: "lightBlue" }
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
                    onClicked: groups.getNewIndex(index)

                }
            }
        }
        Component {
                id: highlightComponent

                Rectangle {
                    z:11
                    width: groupList.width
                    height:75
                    color: "#1ebfff"
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
                        onClicked: console.log("Pressed "+ modelData.lessonName)
                    }
                }
            }
        }
    }
}
