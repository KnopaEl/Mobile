import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtMultimedia 5.12
import QtQuick.Window 2.11
import QtGraphicalEffects 1.12

ApplicationWindow {
    visible: true
    width: 640
    height: 1000
    title: qsTr("Tabs")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page { //Лабораторная работа 1. Использование элементов
            id: page1
            width: 640
            height: 1000

            header: Rectangle { // прямоугольник, где содержиться заголовок
                color:"#FFFFFF"
                width: 640
                height: 80

                GridLayout{ //выравнивание заголовка, используя "таблицу"
                    anchors.fill: parent
                    columns: 4
                    rows: 1

                Label{//- название как у яндекса (Я-красная, ндекс- черные)
                    Layout.column: 0
                    Layout.row: 0
//                    Layout.preferredHeight: 80
//                    Layout.preferredWidth: 8
                    text: qsTr("Л")
                    font.weight: Font.Bold
                    color:"#FB170E"
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.capitalization: Font.AllUppercase
                    font.pixelSize: Qt.application.font.pixelSize * 6
                    font{
                        family: "Bahnschrift Condensed"
                    }
                }

                Label{//- название как у яндекса (Я-красная, ндекс- черные)
                    Layout.column: 1
                    Layout.row: 0
//                    Layout.preferredHeight: 80
//                    Layout.preferredWidth: 32
                    text: qsTr("аба1.")
                    font.weight: Font.Bold
                    color:"#000000"
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignBottom
                    font.capitalization: Font.AllUppercase
                    font.pixelSize: Qt.application.font.pixelSize * 3
                    font{
                        family: "Times New Roman"
                    }
                }
                Label { //- содержание 1 лабы -желтым цветом
                    Layout.column: 2
                    Layout.row: 0
//                    Layout.preferredHeight: 80
//                    Layout.preferredWidth: 40
                    color: "#FFEA2E"
                    text: qsTr("Elements GUI                     ")
                    font.weight: Font.Bold
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignBottom
                    font.capitalization: Font.AllUppercase
                    font.pixelSize: Qt.application.font.pixelSize * 3
                    font{
                        family: "Bahnschrift Condensed"
                    }
                }

                Image { //картинка в заголовке - под яндекс
                    id: img
                    Layout.column: 3
                    Layout.row: 0
                    Layout.preferredHeight: 60
                    Layout.preferredWidth: 60
                    source: "image/yan.png"
                    fillMode: Image.PreserveAspectFit //пропорции, не нарушать их

                }
                }
            }

            GridLayout{//выравнивание самой страницы, используя "таблицу"
                anchors.fill: parent
                columns: 3
                rows: 3

                Switch{
                    id: swch
                    Layout.column: 1
                    Layout.row: 1
                    Layout.preferredHeight: 130
                    Layout.preferredWidth: 210
                }

                RadioButton{
                    id: rbt
                    Layout.column: 2
                    Layout.row: 1
                    Layout.preferredHeight: 130
                    Layout.preferredWidth: 210
                }

                Button{
                    id: btn1
                    Layout.column: 3
                    Layout.row: 1
                    Layout.preferredHeight: 130
                    Layout.preferredWidth: 210
                }

                ComboBox {
                    model: ["First", "Second", "Third"]
                    id: combobox
                    Layout.column: 1
                    Layout.row: 2
                    Layout.preferredHeight: 130
                    Layout.preferredWidth: 210
                }

                Slider{
                    id: slidr
                    Layout.column: 2
                    Layout.row: 2
                    Layout.preferredHeight: 130
                    Layout.preferredWidth: 210
                }

                CheckBox{
                    id: chboх
                    Layout.column: 3
                    Layout.row: 2
                    Layout.preferredHeight: 130
                    Layout.preferredWidth: 210
                }

                Dial{
                    id: dial
                    Layout.column: 1
                    Layout.row: 3
                    Layout.preferredHeight: 130
                    Layout.preferredWidth: 210
                }

                RangeSlider {
                    from: 1
                    to: 100
                    first.value: 25
                    second.value: 75
                    id: rangeslider
                    Layout.column: 2
                    Layout.row: 3
                    Layout.preferredHeight: 130
                    Layout.preferredWidth: 210
                }


            }

            background: Rectangle {
                color:"#BABABA"
            }
        }

        Page {//Лабораторная работа 2. Настройка видеоплеера.
            id: page2
            width: 640
            height: 1000

            header: Rectangle {// прямоугольник, где содержиться заголовок
                color:"#FFFFFF"
                width: 640
                height: 80

                GridLayout{//выравнивание заголовка, используя "таблицу"
                    anchors.fill: parent
                    columns: 3
                    rows: 1

                Label{//- название как у яндекса (Я-красная, ндекс- черные)
                    Layout.column: 0
                    Layout.row: 0
//                    Layout.preferredHeight: 80
//                    Layout.preferredWidth: 8
                    text: qsTr("Л")
                    font.weight: Font.Bold
                    color:"#FB170E"
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.capitalization: Font.AllUppercase
                    font.pixelSize: Qt.application.font.pixelSize * 6
                    font{
                        family: "Bahnschrift Condensed"
                    }
                }

                Label{//- название как у яндекса (Я-красная, ндекс- черные)
                    Layout.column: 1
                    Layout.row: 0
//                    Layout.preferredHeight: 80
//                    Layout.preferredWidth: 32
                    text: qsTr("аба2.")
                    font.weight: Font.Bold
                    color:"#000000"
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignBottom
                    font.capitalization: Font.AllUppercase
                    font.pixelSize: Qt.application.font.pixelSize * 3
                    font{
                        family: "Times New Roman"
                    }
                }
                Label {//- содержание 2 лабы -желтым цветом
                    Layout.column: 2
                    Layout.row: 0
//                    Layout.preferredHeight: 80
//                    Layout.preferredWidth: 40
                    color: "#FFEA2E"
                    text: qsTr("Multiplayer and video                     ")
                    font.weight: Font.Bold
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignBottom
                    font.capitalization: Font.AllUppercase
                    font.pixelSize: Qt.application.font.pixelSize * 3
                    font{
                        family: "Bahnschrift Condensed"
                    }
                }

//                Image {
//                    id: img1
//                    Layout.column: 3
//                    Layout.row: 0
//                    Layout.preferredHeight: 60
//                    Layout.preferredWidth: 60
//                    source: "image/yan.png"
//                    fillMode: Image.PreserveAspectFit //пропорции, не нарушать их

//                }
                }
            }

            GridLayout{ //выравнивание заголовка, используя "таблицу"
              anchors.fill: parent
              columns: 1
              rows: 2

                Rectangle {
                    id: rectangular
                    color:"#BABABA"
                    Layout.column: 0
                    Layout.row: 0
                    Layout.preferredHeight: 800
                    Layout.preferredWidth: 640
                    //width: 640
                    //height: 600

                    MediaPlayer {
                        id: playVideo
                        onPositionChanged: {
                            slider2.sync = true
                            slider2.value = playVideo.position
                            slider2.sync = false
                        }
                        source: "vids/sample.avi"
                    }

                    Camera {
                            id: camera
                            exposure {
                                exposureCompensation: -1.0
                                exposureMode: Camera.ExposurePortrait
                            }
                        }

                    VideoOutput {
                        anchors.fill: parent
                        source: if (swtich.position == 1)
                                {
                                    playVideo
                                }
                        else if (swtich.position == 0)
                                {
                                    camera
                                }

                         }
                    Image {
                            id: photoPreview
                        }


                    Slider{
                        id: slider2
                        x: 0
                        y: rectangular.height - 230
                        width: parent.width - 5
                        to: playVideo.duration
                        property bool sync: false
                        onValueChanged: {
                            if (!sync)
                                playVideo.seek(value)
                        }
                    }

//                      ColumnLayout{
//                             id: columnLayout
//                             anchors.fill: parent
                    Rectangle {
                        id: rectangular1
                        color:"#BABABA"
                        Layout.column: 0
                        Layout.row: 1
                        Layout.preferredHeight: 300
                        Layout.preferredWidth: 640

                        GridLayout{ //выравнивание заголовка, используя "таблицу"
                              anchors.fill: parent
                              columns: 2
                              rows: 3

                                     Rectangle {
                                         color: "#BABABA"
                                         //width: 640

                                         Button {
                                             id: button1
                                             Layout.column: 0
                                             Layout.row: 0
                                             Layout.preferredHeight: 100
                                             Layout.preferredWidth: 100
                                             //width: 100
                                             //height: 100

                                             Image {
                                                 id: image2
                                                 width: 100
                                                 height: 100
                                                 fillMode: Image.PreserveAspectFit
                                                 source: "img/play1.png"

                                                 property bool pressed: false

                                                 MouseArea {
                                                     id: mousear
                                                     anchors.fill: parent
                                                     onReleased: {
                                                         image2.opacity = 1.0
                                                     }
                                                     onPressed: {
                                                         image2.opacity = 0.4

                                                         if (image2.pressed == false) {
                                                             image2.state = "image2_STOP"
                                                             image2.pressed = true
                                                             playVideo.play()
                                                         }
                                                         else{
                                                             image2.state = "image2_PLAY"
                                                             image2.pressed = false
                                                             playVideo.pause()

                                                         }
                                                     }
                                                 }

                                                 states:[
                                                     State {
                                                         name: "image2_STOP"
                                                         PropertyChanges { target: image2; source: "img/pause1.png"}
                                                     },
                                                     State {
                                                         name: "image2_PLAY"
                                                         PropertyChanges { target: image2; source: "img/play1.png"}
                                                     }
                                                 ]

                                                 Behavior on opacity
                                                 {NumberAnimation
                                                     { duration: 200
                                                     }
                                                 }
                                             }
                                         }
                                       }
                                    //}

                                    //Rectangle{
                                      //  Layout.fillWidth: parent// todo - темный грифт и фон - меняем. todo раскладка под контролы на видео странице. кнопоки маленькие

                                        Switch{
                                            id: swtich
                                            Layout.column: 0
                                            Layout.row: 1
                                            Layout.preferredHeight: 150
                                            Layout.preferredWidth: 300
                                            text: if (swtich.position == 0)
                                                  { qsTr("Камера")}
                                                  else if (swtich.position == 1)
                                                  {qsTr("Видео")}
                                            onClicked: if (swtich.position == 0)
                                                       { camera.start()}
                                                       else if (swtich.position == 1)
                                                       {camera.stop()}
                                        }

                                        Button{
                                            id: imagep
                                            Layout.column: 1
                                            Layout.row: 0
                                            Layout.preferredHeight: 100
                                            Layout.preferredWidth: 100
                                            text: qsTr("Сделать фото")
                                            onClicked: camera.imageCapture.capture();
                                        }

                                        Switch{
                                            id: videocp
                                            Layout.column: 1
                                            Layout.row: 1
                                            Layout.preferredHeight: 150
                                            Layout.preferredWidth: 300
                                            text: if (videocp.position == 0)
                                                  { qsTr("Начать запись")}
                                                  else if (videocp.position == 1)
                                                  {qsTr("Остановить запись")}
                                            onClicked: if (videocp.position == 0)
                                                       { camera.videoRecorder.stop()}
                                                       else if (videocp.position == 1)
                                                       {camera.videoRecorder.record()}
                                                    }
                                                //}
                                          }}}}

            background: Rectangle {
                color:"#BABABA"
            }
         }

        Page {//Лабораторная работа 3. Настройка графических элементов.
            id: page3
            width: 640
            height: 1000

            header: Rectangle {// прямоугольник, где содержиться заголовок
                color:"#FFFFFF"
                width: 640
                height: 80

                GridLayout{//выравнивание заголовка, используя "таблицу"
                    anchors.fill: parent
                    columns: 3
                    rows: 1

                Label{//- название как у яндекса (Я-красная, ндекс- черные)
                    Layout.column: 0
                    Layout.row: 0
//                    Layout.preferredHeight: 80
//                    Layout.preferredWidth: 8
                    text: qsTr("Л")
                    font.weight: Font.Bold
                    color:"#FB170E"
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.capitalization: Font.AllUppercase
                    font.pixelSize: Qt.application.font.pixelSize * 6
                    font{
                        family: "Bahnschrift Condensed"
                    }
                }

                Label{//- название как у яндекса (Я-красная, ндекс- черные)
                    Layout.column: 1
                    Layout.row: 0
//                    Layout.preferredHeight: 80
//                    Layout.preferredWidth: 32
                    text: qsTr("аба3.")
                    font.weight: Font.Bold
                    color:"#000000"
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignBottom
                    font.capitalization: Font.AllUppercase
                    font.pixelSize: Qt.application.font.pixelSize * 3
                    font{
                        family: "Times New Roman"
                    }
                }
                Label {//- содержание 1 лабы -желтым цветом
                    Layout.column: 2
                    Layout.row: 0
//                    Layout.preferredHeight: 80
//                    Layout.preferredWidth: 40
                    color: "#FFEA2E"
                    text: qsTr("Graffical effects                     ")
                    font.weight: Font.Bold
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignBottom
                    font.capitalization: Font.AllUppercase
                    font.pixelSize: Qt.application.font.pixelSize * 3
                    font{
                        family: "Bahnschrift Condensed"
                    }
                }
//                Image {
//                    id: img3
//                    Layout.column: 3
//                    Layout.row: 0
//                    Layout.preferredHeight: 60
//                    Layout.preferredWidth: 60
//                    horizontalAlignment: Image.AlignRight
//                    source: "image/yan.png"
//                    fillMode: Image.PreserveAspectFit //пропорции, не нарушать их

//                }
                }

            }

            GridLayout{ //выравнивание самой страницы, используя "таблицу"
                anchors.fill: parent
                columns: 2
                rows: 3


            DropShadow {// !!!!!!!! TODO 1) в lauout размещать сами эффекты
                //внутри функции размещаем картинку,
                //присваиваем значение true в самой функции, false самой картинке
                //тень вокруг картинки.
                    Layout.column: 0
                    Layout.row: 0
                    Layout.fillHeight: true
                    Layout.preferredWidth: 250
                    horizontalOffset: 6
                    verticalOffset: 6
                    radius: radius.value
                    samples: 24
                    color: "#80000000"
                    source: name1
                    visible: true

                    Image {
                        //Layout.column: 0
                        //Layout.row: 0
                       // Layout.fillHeight: true
                        //Layout.preferredWidth: 100
                        anchors.fill: parent
                        id: name1
                        source: "image/SUN.png"
                        sourceSize: Qt.size(parent.width, parent.height)
                        fillMode: Image.PreserveAspectFit
                        smooth: true
                        visible: false
                        }
                }
            Slider{//наш регулировщик
                id: radius
                Layout.column: 1
                Layout.row: 0
                Layout.preferredHeight: 200
                Layout.preferredWidth: 200
                from: 0.0
                to: 16.0
                stepSize: 0.5
                Text {
                    y:-15
                    text: qsTr("DropShadow")
                }
            }

            GammaAdjust {//в lauout размещать сами эффекты
                //внутри функции размещаем картинку,
                //присваиваем значение true в самой функции, false самой картинке
                //контраст- но он не работает
                 anchors.fill: name2
                 source: name2
                 gamma: gamma.value
                 Layout.column: 0
                 Layout.row:1
                 Layout.fillHeight: true
                 //Layout.preferredHeight: 100
                 Layout.preferredWidth: 300
                 visible: true

                    Image {
                        //Layout.column: 0
                        //Layout.row:1
                        //Layout.fillHeight: true
                        //Layout.preferredWidth: 80
                        anchors.fill: parent
                        id: name2
                        source: "image/bug.png"
                        fillMode: Image.PreserveAspectFit //пропорции, не нарушать их
                        sourceSize: Qt.size(parent.width, parent.height)
                        smooth: true
                        visible: false

                    }
            }
            Slider{//наш регулировщик
                id: gamma
                Layout.column: 1
                Layout.row: 1
                Layout.preferredHeight: 200
                Layout.preferredWidth: 200
                from: 0.0
                to: 1.0
                stepSize: 0.1
                Text {
                    y:-15
                    text: qsTr("GammaAdjust")
                }
            }

            Desaturate {//в lauout размещать сами эффекты
                //внутри функции размещаем картинку,
                //присваиваем значение true в самой функции, false самой картинке
                //негатив картинки
                anchors.fill: name3
                source: name3
                desaturation: desaturation.value
                Layout.column: 0
                Layout.row: 2
                Layout.fillHeight: true
                //Layout.preferredHeight: 250
                Layout.preferredWidth: 300
                visible: true

                Image {
                        //Layout.column: 0
                        //Layout.row: 2
                        //Layout.fillHeight: true
                        //Layout.preferredWidth: 300
                       id: name3
                       anchors.fill: parent
                       source: "image/bug.png"
                       sourceSize: Qt.size(parent.width, parent.height)
                       fillMode: Image.PreserveAspectFit
                       smooth: true
                       visible: false

                   }
            }
            Slider{ //наш регулировщик
                id: desaturation
                Layout.column:1
                Layout.row: 2
                Layout.preferredHeight: 200
                Layout.preferredWidth: 200
                from: 0
                to: 1
                stepSize: 0.1
                Text {
                    y:-15
                    text: qsTr("Desaturation")
                }
            }
            }

            background: Rectangle {
                color:"#BABABA"
            }
     }

        Page { //Лабораторная работа 4. Отправка запросов к HTTP серверу
             id: page4
             width: 640
             height: 1000

             header: Rectangle { // прямоугольник, то есть место, где содержиться заголовок
                 color:"#FFFFFF"
                 width: 640
                 height: 80

                 GridLayout{ //выравнивание заголовка, используя "таблицу"
                     anchors.fill: parent
                     columns: 4
                     rows: 1

                 Label{//- название как у яндекса (Я-красная, ндекс- черные)
                     Layout.column: 0
                     Layout.row: 0
//                     Layout.preferredHeight: 80
//                     Layout.preferredWidth: 8
                     text: qsTr("Л")
                     font.weight: Font.Bold
                     color:"#FB170E"
                     horizontalAlignment: Text.AlignLeft
                     verticalAlignment: Text.AlignVCenter
                     font.capitalization: Font.AllUppercase
                     font.pixelSize: Qt.application.font.pixelSize * 6
                     font{
                         family: "Bahnschrift Condensed"
                     }
                 }
                 Label{//- название как у яндекса (Я-красная, ндекс- черные)
                     Layout.column: 1
                     Layout.row: 0
//                     Layout.preferredHeight: 80
//                     Layout.preferredWidth: 32
                     text: qsTr("аба4.")
                     font.weight: Font.Bold
                     color:"#000000"
                     horizontalAlignment: Text.AlignLeft
                     verticalAlignment: Text.AlignBottom
                     font.capitalization: Font.AllUppercase
                     font.pixelSize: Qt.application.font.pixelSize * 3
                     font{
                         family: "Times New Roman"
                     }
                 }
                 Label { //- содержание 1 лабы -желтым цветом
                     Layout.column: 2
                     Layout.row: 0
//                     Layout.preferredHeight: 80
//                     Layout.preferredWidth: 40
                     color: "#FFEA2E"
                     text: qsTr("Requests to the server on HTTP")
                     font.weight: Font.Bold
                     horizontalAlignment: Text.AlignLeft
                     verticalAlignment: Text.AlignBottom
                     font.capitalization: Font.AllUppercase
                     font.pixelSize: Qt.application.font.pixelSize * 3
                     font{
                         family: "Bahnschrift Condensed"
                     }
                 }
                 }

             }
             background: Rectangle {
                 color:"#BABABA"
             }
         }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Лаба1")
        }
        TabButton {
            text: qsTr("Лаба2")
        }
        TabButton {
            text: qsTr("Лаба3")
        }
        TabButton {
            text: qsTr("Лаба4")
        }
    }
}

