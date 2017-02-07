#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "StateMachine.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    qmlRegisterType<StateMachine>("StateMachine", 1, 0,
                                              "StateMachine");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
