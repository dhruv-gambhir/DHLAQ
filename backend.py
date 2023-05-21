from PyQt6.QtCore import QObject, pyqtSlot


class Backend(QObject):
    def __init__(self):
        super().__init__()

    @pyqtSlot(result=str)
    def myFunction(self):
        # Perform some task and return a string
        return "Hello from Python!"
    
    @pyqtSlot(str, result=str)
    def myFunctionWithArgs(self, arg):
        # Perform some task and return a string
        return "Hello from Python! You passed in " + arg
    
    @pyqtSlot(int, result=int)
    def myFunctionWithInt(self, arg):
        # Perform some task and return an int
        return arg * 2
    