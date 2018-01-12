import QtQuick 2.10
import QtDream.Core 3.3
import QtDream.Plugin 1.0
import QtDream.Settings 1.1

QtObject
{
    id: root

    property PageMenuItem helloWorldPageItem: PageMenuItem
    {
        text: qsTr( "Hello World" ) + Translator.notifier
        url: Qt.resolvedUrl( "HelloWorldPage.qml" )
    }

    Component.onCompleted:
    {
        var settings = PluginManager.hook( "settings::Settings" );
        settings.pageMenu.addMenuItem( helloWorldPageItem );
        console.log( "HelloWorld插件初始化成功了！" );
    }
}
