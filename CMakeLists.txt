cmake_minimum_required(VERSION 3.16)

project(AplicativoGremio VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appAplicativoGremio
    main.cpp
)

qt_add_qml_module(appAplicativoGremio
    URI AplicativoGremio
    VERSION 1.0
    QML_FILES Main.qml
    QML_FILES Telas/splashScreen/SplashScreen.qml
    QML_FILES Telas/login/Login.qml
    QML_FILES Telas/cadastro/CadastroEscola.qml
    QML_FILES Telas/cadastro/CadastroAluno.qml
    QML_FILES Telas/principalEscola/HomeScreenEscola.qml
    QML_FILES Telas/principalEscola/Inicio/Inicio.qml
    QML_FILES Telas/principalEscola/Alunos/Alunos.qml
    QML_FILES Telas/principalEscola/Chapas/Chapas.qml
    QML_FILES Telas/principalEscola/Votos/Votos.qml
    QML_FILES Telas/principalEscola/Sobre/Sobre.qml
    QML_FILES Logicas/Logicas.js
    RESOURCES Imagens/Icones/Visivel.svg Imagens/Icones/Invisivel.svg Imagens/Icones/home.svg Imagens/Icones/person.svg Imagens/Icones/chapa.svg Imagens/Icones/votos.svg Imagens/Icones/informacao.svg Imagens/Logo/VotaGremio.png
    RESOURCES Fontes/DancingScript-VariableFont_wght.ttf
    QML_FILES Telas/principalAluno/HomeScreenAluno.qml
    QML_FILES Telas/principalAluno/Inicio/InicioScreenAluno.qml
    QML_FILES Telas/principalAluno/Chapas/ChapasScreenAluno.qml
    QML_FILES Telas/principalAluno/Votos/VotosScreenAluno.qml
    QML_FILES Telas/principalAluno/Sobre/SobreScreenAluno.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appAplicativoGremio PROPERTIES
    #    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appAplicativoGremio
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appAplicativoGremio
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appAplicativoGremio
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
