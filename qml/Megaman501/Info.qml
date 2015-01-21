import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    id: info
    color: "#00000000"
    property string controllerSource
    property string pressASource
    property string titleSource
    property string boxSource
    property string boxText
    property string cartSource
    property string consoleSource
    property string ss1
    property string ss2
    property string ss3
    property string logoSource

    property bool pressARunning: true
    property bool movementRunning: true
    height: parent.height
    width: main.width
    Image {
        id: pressA
        source: pressASource
        anchors.right: controller.left
        anchors.rightMargin: 10
        anchors.top: logo.bottom
        anchors.topMargin: 5
    }
    Image {
        id: logo
        source: logoSource
        anchors.right: screenshots.left
        anchors.rightMargin: 175
    }

    Image {

        id: consoleImage
        source: consoleSource
        y: 410
        anchors.left: infoText.right
        anchors.leftMargin: 50
    }
    Image {
        id: cart
        height: info.height * 0.4
        anchors.horizontalCenter: consoleImage.right
        anchors.bottom: info.bottom
        anchors.bottomMargin: 300
        fillMode: Image.PreserveAspectFit
        source: cartSource
    }
    DropShadow{
        source: cart
        anchors.fill: cart
        horizontalOffset: -30
        verticalOffset: 30
        radius: 8.0
        samples: 16

        color: "#80000000"
    }
    Grid {
        id: screenshots
        rows: 3
        columns: 1
        spacing: 10
        anchors.left: cart.right
        anchors.leftMargin: 15
        Rectangle{
            color: "#00000000"
            border.width: 5
            border.color: "white"
            width: screenshot1.width+10
            height: screenshot1.height+10
            radius: 5
            Image {
                id: screenshot1
                source: ss1
                anchors.centerIn: parent
            }
        }
        Rectangle{
            color: "#00000000"
            border.width: 5
            border.color: "white"
            width: screenshot2.width+10
            height: screenshot2.height+10
            radius: 5
            Image {
                id: screenshot2
                source: ss2
                anchors.centerIn: parent
            }
        }
        Rectangle{
            color: "#00000000"
            border.width: 5
            border.color: "white"
            width: screenshot3.width+10
            height: screenshot3.height+10
            radius: 5
            Image {
                id: screenshot3
                source: ss3
                anchors.centerIn: parent
            }
        }
    }

    Image {
        id: title
        anchors.left: info.left
        width: info.width * 0.4
        fillMode: Image.PreserveAspectFit
        anchors.leftMargin: info.width * 0.05
        source: titleSource
    }
    Image {
        id: controller
        source: controllerSource
        anchors.top: logo.bottom
        anchors.topMargin: 20
        anchors.right: logo.right
        anchors.rightMargin: 100
    }
    /*Image {
        id: box
        height: info.height
        anchors.right: info.right
        anchors.rightMargin: info.width * 0.11
        fillMode: Image.PreserveAspectFit
        source: boxSource
    }*/


    Text{
        id: infoText
        anchors.top: title.bottom
        anchors.left: title.left
        horizontalAlignment: Text.AlignJustify
        text: boxText
        color: "white"
        width: title.width
        height: parent.height * 0.86 - title.y - title.height
        font.pointSize: 12
        font.family: "Helvetica"
        clip: y
        wrapMode: Text.WordWrap
    }
    SequentialAnimation {
        running: movementRunning
        loops: Animation.Infinite
        NumberAnimation { target: consoleImage; property: "y"; duration: 2000; to: 400; easing.type: Easing.InOutQuad }
        NumberAnimation { target: consoleImage; property: "y"; duration: 2000; to: 410; easing.type: Easing.InOutQuad }
    }
    SequentialAnimation {
        running: movementRunning
        loops: Animation.Infinite
        NumberAnimation { target: cart; property: "anchors.bottomMargin"; duration: 2000; to: 275; easing.type: Easing.InOutQuad }
        NumberAnimation { target: cart; property: "anchors.bottomMargin"; duration: 2000; to: 300; easing.type: Easing.InOutQuad }
    }
    SequentialAnimation {
        running: pressARunning
        loops: Animation.Infinite
        NumberAnimation { target: pressA; property: "opacity"; duration: 1000; to: 0.0; /*easing.type: Easing.OutQuad*/ }
        NumberAnimation { target: pressA; property: "opacity"; duration: 1000; to: 1.0; /*easing.type: Easing.OutQuad*/ }
    }


}
