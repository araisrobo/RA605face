#include <QApplication>
#include <QQmlApplicationEngine>

#include "src/scriptlauncher.h"
#include <QQmlContext>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.addImportPath(QStringLiteral("imports"));
    engine.addImportPath(QStringLiteral("assets:/imports"));
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    // Add script launcher here so that we can call in QML
    ScriptLauncher launcher;
    engine.rootContext()->setContextProperty("scriptLauncher", &launcher);

    return app.exec();
}

