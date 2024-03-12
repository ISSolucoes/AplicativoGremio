import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts

Rectangle {
  id: tabSobreScreenAluno
  anchors.fill: parent
  color: "white"

  ColumnLayout {
    id: colunaSobreScreenAluno
    anchors.fill: parent
    anchors.centerIn: parent
    spacing: 0

    Rectangle {
      id: rectLogoSobre
      color: "#2196F3"
      Layout.alignment: Qt.AlignCenter
      Layout.preferredWidth: textoLogoSobreScreenAluno.width
      Layout.preferredHeight: textoLogoSobreScreenAluno.height
      radius: 10
      clip: true

      Label {
        id: textoLogoSobreScreenAluno
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
      text: "Área do aluno"
      font.family: "Dancing Script"
    }

    Label {
      Layout.alignment: Qt.AlignCenter
      text: "Feito com Qt 6.6"
      font.family: "Dancing Script"
    }

  }


}
