#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQuickStyle>
#include <QFileSelector>

int main(int argc, char *argv[])
{
    // QQuickStyle::setStyle("Fusion");

    QApplication app(argc, argv);

    QQmlApplicationEngine engine;

    // engine.setExtraFileSelectors({"android"});

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("ImageViewer", "Main");


    return app.exec();
}
