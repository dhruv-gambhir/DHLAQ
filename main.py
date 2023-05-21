import sys

from PyQt6.QtGui import QGuiApplication
from PyQt6.QtQml import QQmlApplicationEngine

import backend as b



app = QGuiApplication(sys.argv)
engine = QQmlApplicationEngine()

backend = b.Backend()
engine.rootContext().setContextProperty("backend", backend)

engine.quit.connect(app.quit)
engine.load('quick.qml')


sys.exit(app.exec())
