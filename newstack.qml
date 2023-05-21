import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Window 2.15



ApplicationWindow {
    visible: true
    //fill the screen
    width: Screen.width
    height: Screen.height

    title: "Page Navigation Example"

    property int currentPage: 0

    Item{
        id: wecomepage
        visible: currentPage === 0

        GridLayout{

            anchors.fill: parent
            anchors.margins: 50
            rowSpacing: 200
            columnSpacing: 200

            Item {
                    Layout.fillWidth: true
                }

                Item {
                    Layout.fillWidth: true
                }

            Column{

                Text {
                    text: "Welcome to Deep Learning Application"
                    font.pixelSize: 30
                    font.bold: true
                    color: "black"
                }
            }

            
        }
    }

    Item {

        id: page0
        visible: true

        GridLayout {

            anchors.fill: parent
            anchors.margins: 50
            rowSpacing: 200
            columnSpacing: 200

            Column{
                
            
            spacing: 10

                Button {
                id: menubutton1
                text: "Image Segmentation" 
                onClicked: {
                    menubutton1.background.color = "gray"

                    menubutton2.background.color = "white"
                    menubutton3.background.color = "white"
                    menubutton4.background.color = "white"
                    menubutton5.background.color = "white"
                    menubutton6.background.color = "white"

                    currentPage = 1
                }

                background: Rectangle {
                    width: 200
                    height: 50
                    border.color: "black"
                    border.width: 0.5
                    color: "white"

                }

                width: 200
                height: 50

            }
            Button {

                id : menubutton2
                text: "Image Classification"

                background : Rectangle {
                    width: 200
                    height: 50
                    border.color: "black"
                    border.width: 1
                    color: "white"
                }

                onClicked: {
                    menubutton2.background.color = "gray"

                    menubutton1.background.color = "white"
                    menubutton3.background.color = "white"
                    menubutton4.background.color = "white"
                    menubutton5.background.color = "white"
                    menubutton6.background.color = "white"

                }

                width: 200
                height: 50
            }
            Button {

                id : menubutton3
                text: "Object Detection"

                background : Rectangle {
                    width: 200
                    height: 50
                    border.color: "black"
                    border.width: 1
                    color: "white"
                }

                onClicked: {
                    menubutton3.background.color = "gray"

                    menubutton1.background.color = "white"
                    menubutton2.background.color = "white"
                    menubutton4.background.color = "white"
                    menubutton5.background.color = "white"
                    menubutton6.background.color = "white"
                }

                width: 200
                height: 50

            }
            Button {

                id : menubutton4
                text: "Anomaly Detection"

                background : Rectangle {
                    width: 200
                    height: 50
                    border.color: "black"
                    border.width: 1
                    color: "white"
                }

                onClicked: {
                    menubutton4.background.color = "gray"

                    menubutton1.background.color = "white"
                    menubutton2.background.color = "white"
                    menubutton3.background.color = "white"
                    menubutton5.background.color = "white"
                    menubutton6.background.color = "white"
                }

                width: 200
                height: 50

            }
            Button {

                id : menubutton5
                text: "Image Super Resolution"

                background : Rectangle {
                    width: 200
                    height: 50
                    border.color: "black"
                    border.width: 1
                    color: "white"
                }

                onClicked: {
                    
                    menubutton5.background.color = "gray"

                    menubutton1.background.color = "white"
                    menubutton2.background.color = "white"
                    menubutton3.background.color = "white"
                    menubutton4.background.color = "white"
                    menubutton6.background.color = "white"

                }

                width: 200
                height: 50

            }
            Button {

                id : menubutton6
                text: "Back"

                background : Rectangle {
                    width: 200
                    height: 50
                    border.color: "black"
                    border.width: 1
                    color: "white"
                }

                onClicked: {
                    
                    if(currentPage > 0)
                        currentPage = currentPage - 1

                    menubutton1.background.color = "white"
                    menubutton2.background.color = "white"
                    menubutton3.background.color = "white"
                    menubutton4.background.color = "white"
                    menubutton5.background.color = "white"
                    menubutton6.background.color = "white"

                    if(currentPage === 1)
                    {
                        menubutton1.background.color = "gray"
                    }
                    if(currentPage === 2)
                    {
                        menubutton2.background.color = "gray"
                    }
                    if(currentPage === 3)
                    {
                        menubutton3.background.color = "gray"
                    }
                    if(currentPage === 4)
                    {
                        menubutton4.background.color = "gray"
                    }
                    if(currentPage === 5)
                    {
                        menubutton5.background.color = "gray"
                    }

                }

                width: 200
                height: 50

            }        

            
        }
        }

    }

        

    Item {
        id: page2
        visible: currentPage === 1


        GridLayout{
            
            anchors.fill: parent
            
            anchors.margins: 50
            rowSpacing: 200
            columnSpacing: 200

        Item {
            Layout.fillWidth: true
        }

        Item {
            Layout.fillWidth: true
        }



        Column{


            spacing: 10

            Row {
                ComboBox {
                    id: comboBox1
                    width: 200
                    model: ["Select Model", "Unet", "Segnet", "FCN"]
                }
                ComboBox
                {
                    id: comboBox2
                    width: 200
                    model: ["Select Dataset", "1", "2", "3"]
                }
            }
            Button {
                text: "Click me"
                onClicked: {
                    if(comboBox1.currentText == "Unet")
                    {
                        output.text = "Unet"
                    }
                    else if(comboBox1.currentText == "Segnet")
                    {
                        output.text = "Segnet"
                    }
                    else if(comboBox1.currentText == "FCN")
                    {
                        output.text = "FCN"
                    }
                    else
                    {
                        output.text = "Select Model"
                    }

                    if(comboBox2.currentText == "1")
                    {
                        output.text = output.text + " 1"
                    }
                    else if(comboBox2.currentText == "2")
                    {
                        output.text = output.text + " 2"
                    }
                    else if(comboBox2.currentText == "3")
                    {
                        output.text = output.text + " 3"
                    }
                    else
                    {
                        output.text = output.text + " Select Dataset"
                    }
                    
                }
            }
            Text{
                id: output
                text: "Output"
                font.pixelSize: 24
            }
               
        }
        }
    }
}
