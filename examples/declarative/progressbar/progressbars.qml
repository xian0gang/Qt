import Qt 4.6
import "content"

Rectangle {
    id: main
    width: 600; height: 405; color: "#edecec"

    Flickable {
        anchors.fill: parent; contentHeight: column.height + 20
        Column {
            id: column; x: 10; y: 10; spacing: 10
            Repeater {
                model: 25
                ProgressBar {
                    property int r: Math.floor(Math.random() * 5000 + 1000)
                    width: main.width - 20
                    NumberAnimation on value { duration: r; from: 0; to: 100; repeat: true }
                    ColorAnimation on color { duration: r; from: "lightsteelblue"; to: "thistle"; repeat: true }
                    ColorAnimation on secondColor { duration: r; from: "steelblue"; to: "#CD96CD"; repeat: true }
                }
            }
        }
    }
}