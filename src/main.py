import os
import sys

from PyQt6.QtCore import QUrl
from PyQt6.QtGui import QGuiApplication, QIcon
from PyQt6.QtQml import QQmlApplicationEngine

from util import convert_path


app = QGuiApplication([])

engine = QQmlApplicationEngine()
engine.load(QUrl.fromLocalFile(convert_path("./src/ui/main_ui.qml")))
if not engine.rootObjects():
    sys.exit(-1)

sys.exit(app.exec())
