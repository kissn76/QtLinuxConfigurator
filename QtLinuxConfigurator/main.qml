import QtQuick 2.10
import QtQuick.Window 2.10
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3

Window {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("Linux Configurator")

    ColumnLayout {
        id: columnLayout

        RowLayout {
            id: rowLayout

            ComboBox {
                id: comboBox
            }
        }

        ColumnLayout {
            id: columnLayout1

            RowLayout {
                id: rowLayout1

                ListView {
                    id: listView
                    x: 0
                    y: 0
                    width: 110
                    height: 260
                    model: ListModel {
                        ListElement {
                            name: "Grey"
                            colorCode: "grey"
                        }

                        ListElement {
                            name: "Red"
                            colorCode: "red"
                        }

                        ListElement {
                            name: "Blue"
                            colorCode: "blue"
                        }

                        ListElement {
                            name: "Green"
                            colorCode: "green"
                        }
                    }
                    delegate: Item {
                        x: 5
                        width: 80
                        height: 40
                        Row {
                            id: row1
                            Rectangle {
                                width: 40
                                height: 40
                                color: colorCode
                            }

                            Text {
                                text: name
                                anchors.verticalCenter: parent.verticalCenter
                                font.bold: true
                            }
                            spacing: 10
                        }
                    }
                }


            }
        }
    }
}
