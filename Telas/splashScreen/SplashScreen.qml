import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts

Item {
  Rectangle {
    id: rectSplashScreen
    anchors.fill: parent
    color: "white"

    Rectangle {
      id: rectLogo
      color: "#2196F3"
      anchors.centerIn: parent
      implicitWidth: textoLogo.width
      implicitHeight: textoLogo.height
      radius: 10
      clip: true

      Label {
        id: textoLogo
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

    BusyIndicator {
      id: indicadorDeCarregamento
      running: true
      anchors.bottom: parent.bottom
      anchors.bottomMargin: parent.height * (10/100)
      anchors.horizontalCenter: parent.horizontalCenter
    }

  }
}
