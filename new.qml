import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    id: mainWindow
    width: 800
    height: 600
    visible: true
    title: "Slidable Left Menu"

    // Define properties for menu width and menu state
    property int menuWidth: 300
    property bool isMenuOpen: false

    Rectangle {
        id: contentArea
        width: mainWindow.width
        height: mainWindow.height
        color: "lightgray"

        // Content area
    }

    Rectangle {
        id: menu
        width: menuWidth
        height: mainWindow.height
        color: "darkgray"
        z: 1

        // Menu content
        Column {
            spacing: 10
            anchors {
                top: parent.top
                left: parent.left
                right: parent.right
                margins: 10
            }

            Button {
                width: parent.width
                height: 40
                text: "Option 1"
            }

            Button {
                width: parent.width
                height: 40
                text: "Option 2"
            }

            // Add more buttons or other controls as needed
        }
    }

    // Animate the menu's position based on the menu state
    Behavior on x {
        NumberAnimation {
            target: menu
            property: "x"
            duration: 250
            easing.type: Easing.InOutQuad
        }
        NumberAnimation {
            target: contentArea
            property: "x"
            duration: 250
            easing.type: Easing.InOutQuad
        }
    }

    // Bind the menu's position to the menu state
    onIsMenuOpenChanged: {
        if (isMenuOpen) {
            menu.x = 0;
            contentArea.x = menuWidth;
        } else {
            menu.x = -menuWidth;
            contentArea.x = 0;
        }
    }

    // Open/close button
    Button {
        id: menuButton
        width: 100
        height: 50
        text: isMenuOpen ? "Close Menu" : "Open Menu"
        anchors {
            right: parent.right
            top: parent.top
            margins: 10
        }
        onClicked: {
            isMenuOpen = !isMenuOpen;
        }
    }
    
    // Initialize menu state as closed
    Component.onCompleted: {
        isMenuOpen = false;
    }

    Text {
        anchors.centerIn: parent
        text: "Content Area"
    }
}
