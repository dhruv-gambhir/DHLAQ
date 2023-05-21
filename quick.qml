import QtQuick 2.12
import QtQuick.Controls 2.12


ApplicationWindow {
    id: mainWindow
    width: 800
    height: 600
    visible: true
Column {
    Button {
        id: button
        text: "Call Python Function"
        onClicked: {
            // Call the Python function and update the text area
            var result = backend.myFunction();
            text.text = result;
        }
    }

    TextArea {
        id: text
    }
}
}