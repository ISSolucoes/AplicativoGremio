import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts

import "../../Logicas/Logicas.js" as Logicas

Popup {
  id: cadastroAlunoTelaPopUp
  anchors.centerIn: parent
  implicitWidth: parent.width * (85/100)

  ColumnLayout {
    id: colunaCadastroAluno
    anchors.fill: parent
    anchors.topMargin: 10
    anchors.bottomMargin: 10

    TextField {
      id: textFieldNomeAluno
      placeholderText: qsTr("Nome do aluno")
      Layout.alignment: Qt.AlignCenter
      Layout.fillWidth: true
    }
    Row {
      id: linhaCampoCadastroSenhaAluno1
      spacing: 0
      Layout.alignment: Qt.AlignHCenter
      Layout.fillWidth: true

      TextField {
        id: textFieldCadastroSenhaAluno1
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
          textFieldCadastroSenhaAluno1.echoMode = (textFieldCadastroSenhaAluno1.echoMode == modoSenha) ? modoLetra : modoSenha;
        }
      }

    }
    Row {
      id: linhaCampoCadastroSenhaAluno2
      spacing: 0
      Layout.alignment: Qt.AlignHCenter
      Layout.fillWidth: true

      TextField {
        id: textFieldCadastroSenhaAluno2
        echoMode: TextInput.Password
        passwordMaskDelay: 1500
        placeholderText: qsTr("Confirme sua senha")
        implicitWidth: parent.width * (80/100)
      }
      RoundButton {
        id: btnVisivelInvisivelCadastroSenha2
        implicitWidth: parent.width * (20/100)
        property string iconeTornarVisivel: "../../Imagens/Icones/Visivel.svg";
        property string iconeTornarInvisivel: "../../Imagens/Icones/Invisivel.svg";
        property int modoSenha: TextInput.Password;
        property int modoLetra: TextInput.Normal;
        icon.source: iconeTornarVisivel
        onClicked: function() {
          icon.source = (icon.source == iconeTornarVisivel) ? iconeTornarInvisivel : iconeTornarVisivel;
          textFieldCadastroSenhaAluno2.echoMode = (textFieldCadastroSenhaAluno2.echoMode == modoSenha) ? modoLetra : modoSenha;
        }
      }

    }

    ComboBox {
      id: comboBoxIdadeAluno
      displayText: qsTr("Idade do aluno")
      model: Logicas.retornaVetorIdades()
      Layout.alignment: Qt.AlignCenter
      Layout.fillWidth: true
    }
    TextField {
      id: textFieldMatriculaAluno
      placeholderText: qsTr("Matricula do aluno")
      Layout.alignment: Qt.AlignCenter
      Layout.fillWidth: true
    }
    ComboBox {
      id: comboBoxSerieAluno
      displayText: qsTr("Série do aluno")
      model: Logicas.retornaVetorSeriesEscolares()
      Layout.alignment: Qt.AlignCenter
      Layout.fillWidth: true
    }
    ComboBox {
      id: comboboxTurnoAluno
      displayText: qsTr("Turno do aluno")
      model: Logicas.retornaVetorTurnosEscolares()
      Layout.alignment: Qt.AlignCenter
      Layout.fillWidth: true
    }
    Button {
      id: btnCadastrarAluno
      text: qsTr("Cadastrar-se")
      Layout.fillWidth: true
      onClicked: function() {
        console.log(`Clickou em cadastrar aluno`);
      }
    }

  }

}
