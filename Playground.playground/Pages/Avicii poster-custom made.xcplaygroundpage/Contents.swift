let preferredWidth = 400
let preferredHeight = 600
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

// Draw axis with a scale
canvas.drawAxes(withScale: true, by: 50)

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
canvas.textColor = purple
canvas.drawText(message: "A", at: Point(x: 120, y: 300), size: 50, kerning: 0)
canvas.drawText(message: "V", at: Point(x: 150, y: 300), size: 50, kerning: 0)
canvas.drawText(message: "I", at: Point(x: 185, y: 300), size: 50, kerning: 0)
canvas.drawText(message: "C", at: Point(x: 200, y: 300), size: 50, kerning: 0)
canvas.drawText(message: "I", at: Point(x: 240, y: 300), size: 50, kerning: 0)
canvas.drawText(message: "I", at: Point(x: 252, y: 300), size: 50, kerning: 0)
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.fillColor = orange
canvas.drawRectangle(at: Point(x: 0, y: 550), width: 400, height: 50)
