#include <QtGui/QGuiApplication>
#include <QtQml/QQmlContext>
#include "qtquick2applicationviewer.h"
#include "Emulator.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    Emulator emulator;
    QtQuick2ApplicationViewer viewer;
    viewer.setMainQmlFile(QStringLiteral("qml/Megaman501/main.qml"));
    viewer.showExpanded();
    viewer.rootContext()->setContextProperty("Emu", &emulator);
    viewer.showFullScreen();
    return app.exec();
}
