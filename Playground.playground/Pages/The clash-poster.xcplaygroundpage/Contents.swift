let preferredWidth = 400
let preferredHeight = 600

import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

import Foundation

var str = "Hello, playground"

//Colors
let orange = Color(hue: 21, saturation: 76, brightness: 94, alpha: 100)
let blue = Color(hue: 201, saturation: 72, brightness: 85, alpha: 65)
let offWhite = Color(hue: 208, saturation: 1, brightness: 88, alpha: 100)

//Background Color
canvas.fillColor = orange
var vertices: [Point] = [ ] // empty list of vertices
vertices.append(Point (x: 0, y: 0)) // start
vertices.append(Point (x: 0, y: 600))
vertices.append(Point (x: 400, y: 600))
vertices.append(Point (x: 400, y: 0)) // end
canvas.drawCustomShape(with: vertices)

//The Shape
canvas.drawShapesWithFill = false
canvas.borderColor = offWhite
canvas.defaultBorderWidth = 11

// Off white diamond
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.borderColor = offWhite
canvas.defaultBorderWidth = 11
canvas.drawRectangle(at: Point(x: 225, y: 375), width: 25, height: 25)

