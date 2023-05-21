import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 600
    height: 500
    title: "Page Navigation Example"

    property int currentPage: 1

    Item {
        id: page1
        visible: currentPage === 1

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

                    currentPage = 2
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
                text: "Image Captioning"

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
                text: "Image Inpainting"

                background : Rectangle {
                    width: 200
                    height: 50
                    border.color: "black"
                    border.width: 1
                    color: "white"
                }

                onClicked: {
                    
                    menubutton6.background.color = "gray"

                    menubutton1.background.color = "white"  
                    menubutton2.background.color = "white"
                    menubutton3.background.color = "white"
                    menubutton4.background.color = "white"
                    menubutton5.background.color = "white"
                }

                width: 200
                height: 50

            }        

            
        }
        
        Text {
            id: text1
            text: qsTr("Welcome to DHLA")
            font.pointSize: 20
            anchors.centerIn: parent
        }

        }
       
    }
        

    Item {
        id: page2
        visible: currentPage === 2


        GridLayout{
            
            anchors.fill: parent
            anchors.margins: 50
            rowSpacing: 200
            columnSpacing: 200


            Column{
            
            spacing: 10

                Button {
                id: menubutton1_2
                text: "Image Segmentation" 
                onClicked: {
                    menubutton1.background.color = "gray"

                    menubutton2.background.color = "white"
                    menubutton3.background.color = "white"
                    menubutton4.background.color = "white"
                    menubutton5.background.color = "white"
                    menubutton6.background.color = "white"
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

                id : menubutton2_2
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

                id : menubutton3_2
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

                id : menubutton4_2
                text: "Image Captioning"

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

                id : menubutton5_2
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

                id : menubutton6_2
                text: "Back"

                background : Rectangle {
                    width: 200
                    height: 50
                    border.color: "black"
                    border.width: 1
                    color: "white"
                }

                onClicked: {
                    currentPage = currentPage - 1
                }

                width: 200
                height: 50

            }        

            
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
                        console.log("Segnet")
                    }
                    else if(comboBox1.currentText == "FCN")
                    {
                        console.log("FCN")
                    }
                    else
                    {
                        console.log("Select Model")
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
