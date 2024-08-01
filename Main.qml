import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property int index: 0

    RowLayout
    {
        spacing: 10
        Rectangle
        {
            width: 50
            height: 50
            color: "#00FF00"
            border.width: 2
            Text {
                id: rectText_1
                text: "Rectangle"
                anchors.centerIn: parent
            }
        }

        Repeater
        {
            model: 30
            Rectangle
            {
                width: 50
                height: 50
                color: "#FF0000"
                border.width: 2
                radius: 25
                Text {
                    id: rectText
                    text: "R : " + index
                    anchors.centerIn: parent
                    font.bold: true
                    font.pointSize: 10
                }
            }
        }

        Rectangle
        {
            width: 50
            height: 50
            color: "#00FF00"
            border.width: 2
            Text {
                id: rectText_2
                text: "Rectangle"
                anchors.centerIn: parent
            }
        }
    }
}
