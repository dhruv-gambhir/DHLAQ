import sys
from PyQt6.QtCore import QUrl, QFileSystemWatcher
from PyQt6.QtGui import QGuiApplication
from PyQt6.QtQml import QQmlApplicationEngine

app = QGuiApplication(sys.argv)

qml_file = "/Users/dhruvgambhir/files/DHLA_qml/newstack.qml"

def create_engine():
    engine = QQmlApplicationEngine()
    engine.load(QUrl.fromLocalFile(qml_file))
    if engine.rootObjects():
        return engine
    sys.exit(-1)

def reload_qml():
    global engine
    del engine
    engine = create_engine()

engine = create_engine()
engine.rootContext().setContextProperty("backend", __import__("backend"))

watcher = QFileSystemWatcher()
watcher.addPath(qml_file)
watcher.fileChanged.connect(reload_qml)


sys.exit(app.exec())
