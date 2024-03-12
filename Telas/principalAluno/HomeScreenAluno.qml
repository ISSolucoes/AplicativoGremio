import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts

import "./Inicio"
import "./Chapas"
import "./Votos"
import "./Sobre"

ApplicationWindow {
  id: homeScreen2
  visible: true
  Material.accent: Material.Blue

  footer: TabBar {
    id: barraOpcoesAluno
    width: homeScreen2.implicitWidth
    TabButton {
      icon.source: "../../Imagens/Icones/home.svg"
    }
    TabButton {
      icon.source: "../../Imagens/Icones/chapa.svg"
    }
    TabButton {
      icon.source: "../../Imagens/Icones/votos.svg"
    }
    TabButton {
      icon.source: "../../Imagens/Icones/informacao.svg"
    }
  }

  StackLayout {
    id: stackLayoutHomeScreen2
    currentIndex: barraOpcoesAluno.currentIndex
    anchors.fill: parent

    Item {
      InicioScreenAluno {
      }
      Layout.fillWidth: true
      Layout.fillHeight: true
    }

    Item {
      ChapasScreenAluno {
      }
      Layout.fillWidth: true
      Layout.fillHeight: true
    }

    Item {
      VotosScreenAluno {
      }
      Layout.fillWidth: true
      Layout.fillHeight: true
    }

    Item {
      SobreScreenAluno {
      }
      Layout.fillWidth: true
      Layout.fillHeight: true
    }

  }

}
