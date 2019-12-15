import QtQuick 2.12

DarkSquare {
    id: root
    width: 400; height: 400

    Grid {
        rows: 2; columns: 2

        Canvas {
            id: canvas1
//            anchors.top: parent.top
//            anchors.left: parent.left

            width: 200; height: 200
            onPaint: {
                var ctx = getContext("2d")
                ctx.lineWidth = 4
                ctx.strokeStyle = "blue"
                ctx.fillStyle = "steelblue"
                ctx.beginPath()
                ctx.moveTo(50, 50)
                ctx.lineTo(150, 50)
                ctx.lineTo(150, 150)
                ctx.lineTo(50, 150)
                ctx.closePath()
                ctx.fill()
                ctx.stroke()
            }
        }

        Canvas {
            id: canvas2
//            anchors.top: canvas1.bottom
//            anchors.left: parent.left
            width: 120; height: 120
            onPaint: {
                var ctx = getContext("2d")
                ctx.fillStyle = 'green'
                ctx.strokeStyle = 'blue'
                ctx.lineWidth = 4

                ctx.fillRect(20, 20, 80, 80)
                ctx.clearRect(30, 30, 60, 60)
                ctx.strokeRect(20, 20, 40, 40)
            }
        }

        Canvas {
            id: canvas3
            width: 200; height: 200
//            anchors.right: parent.right
            onPaint: {
                var ctx = getContext("2d")
                var gradient = ctx.createLinearGradient(100, 0, 100, 200)
                gradient.addColorStop(0, "blue")
                gradient.addColorStop(0.5, "lightsteelblue")
                ctx.fillStyle = gradient
                ctx.fillRect(50, 50, 100, 100)
            }
        }

        Canvas {
            id: canvas4
            width: 220; height: 100
            onPaint: {
                var ctx = getContext("2d")
                ctx.strokeStyle = "#333"
                ctx.fillRect(0, 0, canvas4.width, canvas4.height);
                ctx.shadowColor = "#2ed5fa";
                ctx.shadowOffsetX = 2;
                ctx.shadowOffsetY = 2;
                ctx.shadowBlue = 10;
                ctx.font = 'bold 50px Arial';
                ctx.fillStyle = "#24d12e";
                ctx.fillText("Canvas!", 10, 50);
            }
        }
    }
}


