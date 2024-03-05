import QtQuick
import QtQuick.Controls.Material

import "./Telas/splashScreen"

Window {
    id: root
    width: 300
    height: 500
    visible: true
    title: qsTr("Aplicativo Grêmio")
    Material.accent: Material.Blue

    Component {
        id: telaSplashScreen
        SplashScreen {
            implicitWidth: root.width
            implicitHeight: root.height
        }
    }

    Component {
        id: telaAlternativa
        Rectangle {
            width: root.width
            height: root.height
            color: "yellow"
        }
    }

    Timer {
        interval: 5000; repeat: false; running: true; triggeredOnStart: false;
        onTriggered: function() {
            carregadorDeComponentes.sourceComponent = telaAlternativa;
        }
    }

    Loader {
        id: carregadorDeComponentes
        anchors.fill: parent
        active: true
        sourceComponent: telaSplashScreen
    }

}
