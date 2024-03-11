import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts

import "./Inicio"
import "./Alunos"
import "./Chapas"
import "./Votos"
import "./Sobre"

ApplicationWindow {
  id: homeScreen
  visible: true
  Material.accent: Material.Blue

  footer: TabBar {
    id: barraDeOpcoes
    width: homeScreen.implicitWidth
    TabButton {
      icon.source: "../../Imagens/Icones/home.svg"
    }
    TabButton {
      icon.source: "../../Imagens/Icones/person.svg"
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
    id: stackViewHomeScreen
    currentIndex: barraDeOpcoes.currentIndex
    anchors.fill: parent

    Item {
      Inicio {
      }
      Layout.fillWidth: true
      Layout.fillHeight: true
    }
    Item {
      Alunos {
      }
      Layout.fillWidth: true
      Layout.fillHeight: true
    }
    Item {
      Chapas {
      }
      Layout.fillWidth: true
      Layout.fillHeight: true
    }
    Item {
      Votos {
      }
      Layout.fillWidth: true
      Layout.fillHeight: true
    }
    Item {
      Sobre {
      }
      Layout.fillWidth: true
      Layout.fillHeight: true
    }

  }

}
