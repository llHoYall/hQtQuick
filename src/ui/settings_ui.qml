import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.Material

Page {
  id: idPageSettings

  ColumnLayout {
    anchors.centerIn: parent

    RowLayout {
      Label {
        text: "White Theme"
      }

      Switch {
        id: idSwitchTheme

        checked: false

        onClicked: idLoader.theme = idSwitchTheme.checked
      }

      Label {
        text: "Dark Theme"
      }
    }

    RowLayout {
      spacing: 10

      Rectangle {
        width: 20
        height: 20
        color: Material.color(Material.Pink)

        MouseArea {
          anchors.fill: parent

          onClicked: idLoader.themeColor = Material.color(Material.Pink)
        }
      }

      Rectangle {
        width: 20
        height: 20
        color: Material.color(Material.Orange)

        MouseArea {
          anchors.fill: parent

          onClicked: idLoader.themeColor = Material.color(Material.Orange)
        }
      }

      Rectangle {
        width: 20
        height: 20
        color: Material.color(Material.Yellow)

        MouseArea {
          anchors.fill: parent

          onClicked: idLoader.themeColor = Material.color(Material.Yellow)
        }
      }

      Rectangle {
        width: 20
        height: 20
        color: Material.color(Material.Teal)

        MouseArea {
          anchors.fill: parent

          onClicked: idLoader.themeColor = Material.color(Material.Teal)
        }
      }

      Rectangle {
        width: 20
        height: 20
        color: Material.color(Material.Blue)

        MouseArea {
          anchors.fill: parent

          onClicked: idLoader.themeColor = Material.color(Material.Blue)
        }
      }

      Rectangle {
        width: 20
        height: 20
        color: Material.color(Material.Indigo)

        MouseArea {
          anchors.fill: parent

          onClicked: idLoader.themeColor = Material.color(Material.Indigo)
        }
      }

      Rectangle {
        width: 20
        height: 20
        color: Material.color(Material.Purple)

        MouseArea {
          anchors.fill: parent

          onClicked: idLoader.themeColor = Material.color(Material.Purple)
        }
      }
    }
  }
}