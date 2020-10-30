let preferredWidth = 400
let preferredHeight = 600

import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

let orange = Color(hue: 21, saturation: 76, brightness: 94, alpha: 100)
let blue = Color(hue: 201, saturation: 72, brightness: 85, alpha: 65)
let offWhite = Color(hue: 208, saturation: 1, brightness: 88, alpha: 100)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)

let deepRed = Color(hue: 5, saturation: 85, brightness: 94, alpha: 100)


// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas



canvas.fillColor = deepRed

var vertices: [Point] = [ ] // empty list of vertices
vertices.append(Point (x: 0, y: 0)) // start
vertices.append(Point (x: 0, y: 600))
vertices.append(Point (x: 400, y: 600))
vertices.append(Point (x: 400, y: 0)) // end
canvas.drawCustomShape(with: vertices)

canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false
canvas.fillColor = offWhite
var vertices1: [Point] = [ ] //empty list of vertices
vertices1.append(Point (x: 50 , y: 0)) // start
    vertices1.append(Point (x: 100, y: 50 ))
    vertices1.append(Point (x: 50, y: 100))
    vertices1.append(Point (x: 0, y: 50)) // end

for _ in stride(from: 0, through: 400, by: 100) {

    canvas.drawCustomShape(with: vertices1)
    canvas.drawShapesWithFill = true
}
