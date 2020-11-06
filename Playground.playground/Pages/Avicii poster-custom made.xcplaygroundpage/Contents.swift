let preferredWidth = 400
let preferredHeight = 600
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
let almostBlack = Color(hue: 282, saturation: 0, brightness: 65, alpha: 100)
let black = Color(hue: 272, saturation: 90, brightness: 0, alpha: 100)
let purple = Color(hue: 272, saturation: 90, brightness: 94, alpha: 100)
let purples = Color(hue: 326, saturation: 74, brightness: 53, alpha: 100)
let green = Color(hue: 149, saturation: 73, brightness: 42, alpha: 100)
let aqua = Color(hue: 180, saturation: 100, brightness: 98, alpha: 100)
let red = Color(hue: 350, saturation: 96, brightness: 98, alpha: 100)
let limegreen = Color(hue: 91, saturation: 97, brightness: 99, alpha: 100)
let pom = Color(hue: 334, saturation: 100, brightness: 98, alpha: 100)
let orange = Color(hue: 23, saturation: 100, brightness: 100, alpha: 100)
let poms = Color(hue: 342, saturation: 94, brightness: 97, alpha: 100)

canvas.fillColor = poms

var vertices: [Point] = [ ] // empty list of vertices
vertices.append(Point (x: 0, y: 0)) // start
vertices.append(Point (x: 0, y: 600))
vertices.append(Point (x: 400, y: 600))
vertices.append(Point (x: 400, y: 0)) // end
canvas.drawCustomShape(with: vertices)
canvas.textColor = aqua
canvas.drawText(message: "A", at: Point(x: 120, y: 300), size: 50, kerning: 0)
canvas.textColor = green
canvas.drawText(message: "A", at: Point(x: 120, y: 300), size: 50, kerning: 0)
canvas.textColor = aqua
canvas.drawText(message: "V", at: Point(x: 150, y: 300), size: 50, kerning: 0)
canvas.textColor = green
canvas.drawText(message: "I", at: Point(x: 185, y: 300), size: 50, kerning: 0)
canvas.textColor = aqua
canvas.drawText(message: "C", at: Point(x: 200, y: 300), size: 50, kerning: 0)
canvas.textColor = green
canvas.drawText(message: "I", at: Point(x: 237, y: 300), size: 50, kerning: 0)
canvas.textColor = aqua
canvas.drawText(message: "I", at: Point(x: 252, y: 300), size: 50, kerning: 0)

canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.fillColor = limegreen
canvas.drawRectangle( at: Point(x: 121, y: 299), width: 152, height:-20 )
canvas.fillColor = Color.black
canvas.drawRectangle( at: Point(x: 121, y: 299), width: 152, height:-10 )

var x = 0
var y = 150
for x in stride(from: 0, through: 340, by:50) {
    for y in stride(from: 150, through: 50, by:-25){
        canvas.fillColor = aqua
        canvas.drawEllipse(at: Point(x: x, y: y), width: 3, height: 3)
}
}



canvas.fillColor = orange
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 50)


var vertices1: [Point] = [ ] 
for x in stride(from: 0, through: 400, by: 100){


vertices1.append(Point (x: 50 + x , y: 0)) // start
    vertices1.append(Point (x: 100 + x, y: 50 ))
    vertices1.append(Point (x: 50 + x, y: 100))
    vertices1.append(Point (x: x, y: 50)) // end


    canvas.drawCustomShape(with: vertices1)
    canvas.drawCustomShape(with: vertices1 )
}
let Yellow = Color(hue: 46, saturation: 71, brightness: 98, alpha: 100)
//sun
canvas.fillColor = Yellow
canvas.drawEllipse(at: Point(x: 350, y: 286), width: 40, height: 40)
let white = Color(hue: 81, saturation: 8, brightness: 100, alpha: 100)







canvas.fillColor = white
// middle cloud
canvas.drawEllipse(at: Point(x: 200, y: 200), width: 150, height: 90)
canvas.drawEllipse(at: Point(x: 220, y: 220), width: 80, height: 80)
canvas.drawEllipse(at: Point(x: 180, y: 220), width: 94, height: 98)
canvas.drawEllipse(at: Point(x:240 , y: 240), width: 40, height: 40)
canvas.drawEllipse(at: Point(x: 150, y: 220), width: 75, height: 40)
// left cloud
canvas.drawEllipse(at: Point(x: 60, y: 160), width: 140, height: 40)
canvas.drawEllipse(at: Point(x: 20, y: 155), width: 67, height: 52)
canvas.drawEllipse(at: Point(x: 60, y: 150), width: 40, height: 40)
canvas.drawEllipse(at: Point(x: 78, y: 150), width: 40, height: 70)
canvas.drawEllipse(at: Point(x: 95, y: 150), width: 60, height: 40)
canvas.drawEllipse(at: Point(x: 88, y: 170), width: 50, height: 55)
canvas.drawEllipse(at: Point(x: 35, y: 170), width: 69, height: 58)
// cloud on the right
canvas.drawEllipse(at: Point(x: 300, y: 135), width: 69, height: 58)
canvas.drawEllipse(at: Point(x: 310, y: 110 ), width: 29, height: 38)
canvas.drawEllipse(at: Point(x: 320, y: 135), width: 38, height: 29)

//text in clouds
canvas.textColor = black
canvas.drawText(message: "Avicii Day and Night concert", at: Point(x: 135, y: 200), size: 10, kerning: 0)
canvas.drawText(message: "Wear white", at: Point(x: 15, y: 170), size: 10, kerning: 0)
canvas.drawText(message: "Glow Stick Party", at: Point(x: 50, y: 155), size: 10, kerning: 0)
canvas.drawText(message: "3pm-3am", at: Point(x: 280, y: 120), size: 10, kerning: 0)
//black banner
canvas.fillColor = black
canvas.drawRectangle(at: Point(x: 0, y: 350), width: 400, height: 300)
// moon
canvas.fillColor = white
canvas.drawEllipse(at: Point(x: 350, y: 550), width: 40, height: 40)
//craters on moon
canvas.fillColor = almostBlack
canvas.drawEllipse(at: Point(x: 350, y: 550), width: 6, height: 6)
canvas.drawEllipse(at: Point(x: 336, y: 542), width: 8, height: 8)
canvas.drawEllipse(at: Point(x: 357, y: 560), width: 7, height: 7)
canvas.drawEllipse(at: Point(x: 340, y: 560), width: 5, height: 5)
canvas.drawEllipse(at: Point(x: 359, y: 538), width: 7, height: 7)
// Draw axis with a scale
canvas.textColor = limegreen
canvas.lineColor = limegreen
canvas.drawAxes(withScale: true, by: 50)
//orange pyramids top half
canvas.fillColor = aqua
canvas.drawRectangle(at: Point(x: 0, y: 350), width: 400, height: 50)
var vertices2: [Point] = [ ]
for x in stride(from: 0, through: 400, by: 100){

    
vertices2.append(Point (x: 50 + x , y: 350)) // start
    vertices2.append(Point (x: 100 + x, y: 400 ))
    vertices2.append(Point (x: 50 + x, y: 450))
    vertices2.append(Point (x: x, y: 400)) // end


    canvas.drawCustomShape(with: vertices2)
    
}
canvas.fillColor = orange
canvas.drawCustomShape(with: vertices2)
canvas.drawShapesWithFill = true

canvas.fillColor = Yellow
canvas.drawShapesWithFill = true
var vertices3: [Point] = [ ] //empty list of vertices
for step in stride(from: 5, through: 350, by: Int.random(in:35...55)) {
    vertices3.append(Point (x: 5 , y: 550)) // start
        vertices3.append(Point (x: 10, y: 555 ))
        vertices3.append(Point (x: 5, y: 560))
        vertices3.append(Point (x: 0, y: 555)) // end
    
    canvas.drawCustomShape(with: vertices3)
}

