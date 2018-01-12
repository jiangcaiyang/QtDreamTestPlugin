import QtQuick 2.10
import QtQuick.Controls 1.4
import QtDream.Core 3.2
import QtDream.Controls 1.9

Page
{
    id: page
    implicitWidth: 270
    implicitHeight: 480

    menuBar: MenuBar
    {
        Menu
        {
            title: qsTr( "Hello World" ) + Translator.notifier
        }
    }

    NumberInput
    {
        anchors.centerIn: parent
        parent: page.contentItem
        width: page.width / 2
        min: 1
        max: 10000
        name: " 你今天的能量是多少？"
        quantifier: "牛 "
    }
}
