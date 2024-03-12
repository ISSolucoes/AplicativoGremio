import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts

import "../cadastro"
import "../../Logicas/Logicas.js" as Logicas

// Base dos componentes
Item {

  // Componentes externos
  CadastroEscola {
    id: popUpCadastroEscola
  }
  CadastroAluno {
    id: popUpCadastroAluno
  }

  // Componente principal
  Rectangle {
    id: rectTelaLogin
    anchors.fill: parent
    color: "#2196F3"

    Rectangle {
      id: rectCamposLogin
      anchors.centerIn: parent
      implicitWidth: parent.width * (70/100)
      implicitHeight: comboBoxOpcoes.height + textFieldEmail.height + linhaCampoSenha.height + btnEntrar.height + btnCadastrar.height + colunaRectCamposLogin.anchors.topMargin + colunaRectCamposLogin.anchors.bottomMargin
      color: "white"
      radius: 10

      ColumnLayout {
        id: colunaRectCamposLogin
        width: rectCamposLogin.implicitWidth
        height: rectCamposLogin.implicitHeight
        anchors.topMargin: 10
        anchors.bottomMargin: 10
        spacing: 5

        ComboBox {
          id: comboBoxOpcoes
          model: [`Escola`, `Aluno`]
          Layout.alignment: Qt.AlignCenter
          implicitWidth: parent.width * (85/100)
          Layout.leftMargin: 20
          Layout.rightMargin: 20
        }

        TextField {
          id: textFieldEmail
          placeholderText: qsTr("Exemplo@email.com")
          implicitWidth: parent.width * (85/100)
          Layout.alignment: Qt.AlignCenter
          Layout.leftMargin: 20
          Layout.rightMargin: 20
        }

        Row {
          id: linhaCampoSenha
          spacing: 0
          Layout.alignment: Qt.AlignHCenter

          TextField {
            id: textFieldSenha
            echoMode: TextInput.Password
            passwordMaskDelay: 1500
            placeholderText: qsTr("Senha")
            implicitWidth: colunaRectCamposLogin.width * (65/100)
          }
          RoundButton {
            id: btnVisivelInvisivel
            implicitWidth: colunaRectCamposLogin.width * (20/100)
            property string iconeTornarVisivel: "../../Imagens/Icones/Visivel.svg";
            property string iconeTornarInvisivel: "../../Imagens/Icones/Invisivel.svg";
            property int modoSenha: TextInput.Password;
            property int modoLetra: TextInput.Normal;
            icon.source: iconeTornarVisivel
            onClicked: function() {
              icon.source = (icon.source == iconeTornarVisivel) ? iconeTornarInvisivel : iconeTornarVisivel;
              textFieldSenha.echoMode = (textFieldSenha.echoMode == modoSenha) ? modoLetra : modoSenha;
            }
          }

        }

        Button {
          id: btnEntrar
          text: qsTr("Entrar")
          implicitWidth: parent.width * (85/100)
          Layout.alignment: Qt.AlignCenter
          Layout.leftMargin: 20
          Layout.rightMargin: 20
          onClicked: function() {
            console.log(`Entrando`);
            Logicas.entrar(comboBoxOpcoes.currentIndex);
          }
        }
        Button {
          id: btnCadastrar
          text: qsTr("Cadastrar")
          implicitWidth: parent.width * (85/100)
          Layout.alignment: Qt.AlignCenter
          Layout.leftMargin: 20
          Layout.rightMargin: 20
          onClicked: function() {
            if( comboBoxOpcoes.currentIndex === 0 ) popUpCadastroEscola.open();
            if( comboBoxOpcoes.currentIndex === 1 ) popUpCadastroAluno.open();
          }
        }

      }

    }

  }
}
