import QtQuick
import QtQuick.Controls.Material

import "./Telas/splashScreen"
import "./Telas/login"
import "./Telas/principalEscola"
import "./Telas/principalAluno"

Window {
  id: root
  width: 300
  height: 500
  visible: true
  title: qsTr("Aplicativo Grêmio")
  Material.accent: Material.Blue

  FontLoader {
    id: carregadorDeFontesLocais
    source: "./Fontes/DancingScript-VariableFont_wght.ttf"
  }

  Component {
    id: telaSplashScreen
    SplashScreen {
      implicitWidth: root.width
      implicitHeight: root.height
    }
  }

  Component {
    id: telaLogin
    Login {
      implicitWidth: root.width
      implicitHeight: root.height
    }
  }

  Component {
    id: telaHomeScreenEscola
    HomeScreenEscola {
      width: root.width
      height: root.height
    }
  }

  Component {
    id: telaHomeScreenAluno
    HomeScreenAluno {
      width: root.width
      height: root.height
    }
  }

  Timer {
    interval: 2000; repeat: false; running: true; triggeredOnStart: false;
    onTriggered: function() {
      carregadorDeComponentes.sourceComponent = telaLogin;
    }
  }

  Loader {
    id: carregadorDeComponentes
    antialiasing: true
    anchors.fill: parent
    active: true
    sourceComponent: telaSplashScreen
  }

}
