import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts

Rectangle {
  id: tabSobre
  anchors.fill: parent
  color: "white"

  ColumnLayout {
    id: colunaSobre
    anchors.fill: parent
    anchors.centerIn: parent
    spacing: 0

    Rectangle {
      id: rectLogoSobre
      color: "#2196F3"
      Layout.alignment: Qt.AlignCenter
      Layout.preferredWidth: textoLogoSobre.width
      Layout.preferredHeight: textoLogoSobre.height
      radius: 10
      clip: true

      Label {
        id: textoLogoSobre
        text: qsTr(`Vota Grêmio`)
        font {
          bold: true
          italic: true
          pointSize: 35
          family: "Dancing Script"
        }
        color: "white"
        anchors.centerIn: parent
        padding: 10
      }

    }


    Label {
      Layout.alignment: Qt.AlignCenter
      text: "Feito com Qt 6.6"
      font.family: "Dancing Script"
    }

  }


}
