import QtQuick 2.4


ListView
{
    id:horizontalList
    anchors.fill: parent
    model:programmModel.list
    orientation: ListView.Horizontal
    cacheBuffer: 200
    spacing: 3
    delegate:
        ListView{
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
