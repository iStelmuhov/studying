import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    id: mainPage
    anchors.fill: parent


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

    ListView {
        anchors.fill: parent
        model: 30
        spacing: 20
        cacheBuffer: 200 // in pixels

        delegate:
            ListView {
            width: parent.width;
            height: 50;

            spacing: 20
            model: colorsModel
            orientation: ListView.Horizontal
            delegate:
                Rectangle {
                color: colorCode
                width: 50
                height: 50

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        console.log(colorCode + " clicked");
                    }
                }
            }
        }
    }
}
