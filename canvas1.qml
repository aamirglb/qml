import QtQuick 2.12

DarkSquare
{
    width: 400; height: 400
//    Canvas {
//        id: mycanvas
//        anchors.left: parent.left
//        anchors.leftMargin: 8
//        anchors.top: parent.top
//        anchors.topMargin: 8
//        width: 100; height: 200
//        onPaint: {
//            var ctx = getContext("2d");
//            ctx.fillStyle = Qt.rgba(1, 0, 0, 1);
//            ctx.fillRect(0, 0, width, height)
//        }
//    }

    Canvas {
       width: 400; height: 200
       contextType: "2d"

       Path {
           id: myPath
           startX: 0; startY: 100
           PathCurve { x: 75; y: 75 }
           PathCurve { x: 200; y: 150 }
           PathCurve { x: 325; y: 25 }
           PathCurve { x: 400; y: 100 }
       }

       onPaint: {
           context.strokeStyle = Qt.rgba(.4, .6, .8);
           context.path = myPath;
           context.stroke();
       }
    }
}


