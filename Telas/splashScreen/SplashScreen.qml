import QtQuick 2.15
import QtQuick.Controls.Material

Item {
    Rectangle {
        id: rectSplashScreen
        anchors.fill: parent
        color: "white"

        Rectangle {
            id: rectLogo
            color: "#2196F3"
            anchors.centerIn: parent
            implicitWidth: parent.width * 0.5
            implicitHeight: parent.height * 0.2
            radius: 10
            clip: true

            Column {
                id: colunaTextosLogo
                anchors.fill: parent
                Rectangle {
                    id: rectTextoLogo1
                    color: "transparent"
                    width: rectLogo.implicitWidth/2
                    height: rectLogo.implicitHeight/2
                    anchors.left: parent.left

                    Text {
                        id: textoLogo1
                        text: qsTr("Vota")
                        font {
                            bold: true
                            italic: true
                            pointSize: 35
                            family: "Dancing Script"
                        }
                        color: "white"
                        topPadding: parent.height * (35/100)
                        anchors.right: parent.right
                    }

                }
                Rectangle {
                    id: rectTextoLogo2
                    color: "transparent"
                    width: rectLogo.implicitWidth/2
                    height: rectLogo.implicitHeight/2
                    anchors.right: parent.right
                    Text {
                        id: textoLogo2
                        text: qsTr("Grêmio")
                        font {
                            bold: true
                            italic: true
                            pointSize: 35
                            family: "Dancing Script"
                        }
                        color: "white"
                        topPadding: parent.height * (2/100)
                        anchors.left: parent.left
                    }

                }

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
