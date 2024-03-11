import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts


Popup {
  id: cadastroEscolaTelaPopUp
  anchors.centerIn: parent
  implicitWidth: parent.width * (85/100)
  //implicitHeight: parent.height * (70/100)

  ColumnLayout {
    id: colunaCadastroEscola
    anchors.fill: parent
    anchors.topMargin: 10
    anchors.bottomMargin: 10

    TextField {
      id: textFieldNomeEscola
      placeholderText: qsTr("Nome da escola")
      Layout.alignment: Qt.AlignCenter
      Layout.fillWidth: true
    }

    TextField {
      id: textFieldEmailEscola
      placeholderText: qsTr("Email da escola")
      Layout.alignment: Qt.AlignCenter
      Layout.fillWidth: true
    }

    Row {
      id: linhaCampoCadastroSenha1
      spacing: 0
      Layout.alignment: Qt.AlignHCenter
      Layout.fillWidth: true

      TextField {
        id: textFieldCadastroSenha1
        echoMode: TextInput.Password
        passwordMaskDelay: 1500
        placeholderText: qsTr("Cadastre sua senha")
        implicitWidth: parent.width * (80/100)
      }
      RoundButton {
        id: btnVisivelInvisivelCadastroSenha1
        implicitWidth: parent.width * (20/100)
        property string iconeTornarVisivel: "../../Imagens/Icones/Visivel.svg";
        property string iconeTornarInvisivel: "../../Imagens/Icones/Invisivel.svg";
        property int modoSenha: TextInput.Password;
        property int modoLetra: TextInput.Normal;
        icon.source: iconeTornarVisivel
        onClicked: function() {
          icon.source = (icon.source == iconeTornarVisivel) ? iconeTornarInvisivel : iconeTornarVisivel;
          textFieldCadastroSenha1.echoMode = (textFieldCadastroSenha1.echoMode == modoSenha) ? modoLetra : modoSenha;
        }
      }

    }

    Row {
      id: linhaCampoCadastroSenha2
      spacing: 0
      Layout.alignment: Qt.AlignHCenter
      Layout.fillWidth: true

      TextField {
        id: textFieldCadastroSenha2
        echoMode: TextInput.Password
        passwordMaskDelay: 1500
        placeholderText: qsTr("Confirme sua senha")
        implicitWidth: colunaCadastroEscola.width * (80/100)
      }
      RoundButton {
        id: btnVisivelInvisivelCadastroSenha2
        implicitWidth: colunaCadastroEscola.width * (20/100)
        property string iconeTornarVisivel: "../../Imagens/Icones/Visivel.svg";
        property string iconeTornarInvisivel: "../../Imagens/Icones/Invisivel.svg";
        property int modoSenha: TextInput.Password;
        property int modoLetra: TextInput.Normal;
        icon.source: iconeTornarVisivel
        onClicked: function() {
          icon.source = (icon.source == iconeTornarVisivel) ? iconeTornarInvisivel : iconeTornarVisivel;
          textFieldCadastroSenha2.echoMode = (textFieldCadastroSenha2.echoMode == modoSenha) ? modoLetra : modoSenha;
        }
      }

    }

    Button {
      id: btnCadastrarEscola
      text: qsTr("Cadastrar escola")
      Layout.fillWidth: true
      onClicked: function() {
        console.log(`Clickou em cadastrar escola`);
      }
    }

  }

}

