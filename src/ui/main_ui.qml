import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.Material

ApplicationWindow {
  visible: true
  width: 640
  height: 480
  title: qsTr("hQtQuick")

  Material.theme: idLoader.theme ? Material.Dark : Material.Light
  Material.foreground: idLoader.theme ? Material.White : Material.Black
  Material.background: idLoader.theme ? Material.Black : Material.White
  Material.primary: idLoader.themeColor
  Material.accent: idLoader.themeColor

  Action {
    id: idActMenu

    onTriggered: idMenu.open()
  }

  header: ToolBar {
    id: idHeader

    RowLayout {
      spacing: 20
      anchors.fill: parent

      Label {
        Layout.fillWidth: true
        Layout.alignment: Qt.AlignHCenter
        Layout.leftMargin: idToolBtn.width

        id: idLabelToolBar

        text: "Hello"
        font.bold: true
        font.pixelSize: 24
        horizontalAlignment: Qt.AlignHCenter
      }

      ToolButton {
        icon.source: "../../resource/cog.png"
        action: idActMenu

        id: idToolBtn

        Menu {
          id: idMenu

          MenuItem {
            text: "Settings"
            font.pixelSize: 16

            onTriggered: {
              idLabelToolBar.text = "Settings"
              idLoader.source = "./settings_ui.qml"
            }
          }
        }
      }
    }
  }

  Loader {
    width: parent.width

    id: idLoader

    property bool theme: false
    property color themeColor: Material.color(Material.Teal)
  }
}