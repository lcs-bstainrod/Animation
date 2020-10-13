//Required Code
//Canvas Sizeing
let preferredWidth = 400
let preferredHeight = 600

import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas


let pink = Color(hue: 338, saturation: 83, brightness: 89, alpha: 100)
let black = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
let beige = Color(hue: 69, saturation: 6, brightness: 87, alpha: 100)
canvas.drawShapesWithFill = true
canvas.fillColor = pink
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)
canvas.defaultLineWidth = 15


for step in stride(from: 25, through: 175, by: 25) {

step

if step % 50 == 0 {
canvas.lineColor = beige
}else{
canvas.lineColor = black
}

// bottom left
canvas.drawLine(from: Point(x: step, y: step), to: Point(x: 0, y: step))
canvas.drawLine(from: Point(x: step, y: step), to: Point(x: step, y: 0))

//top left
canvas.drawLine(from: Point(x: step, y: 400 - step), to: Point(x: 0, y: 400 - step))
canvas.drawLine(from: Point(x: step, y: 400 - step), to: Point(x: step, y: 400))

///bottom right
canvas.drawLine(from: Point(x: 400 - step, y: step), to: Point(x: 400, y: step))
canvas.drawLine(from: Point(x: 400 - step, y: step), to: Point(x: 400 - step, y: 0))

//top right
canvas.drawLine(from: Point(x: 400 - step, y: 400 - step), to: Point(x: 400 - step, y: 400))
canvas.drawLine(from: Point(x: 400 - step, y: 400 - step), to: Point(x: 400, y: 400 - step))
}


// text

canvas.textColor = beige
canvas.drawText(message: "the runaways", at: Point(x: 25, y: 420), size: 50, kerning: 0)
canvas.textColor = black
canvas.drawText(message: "Friday ", at: Point(x: 25, y: 550), size: 10, kerning: 0)
canvas.drawText(message: "august 19 1977", at: Point(x: 25, y: 530), size: 10, kerning: 0)
canvas.drawText(message: "tickets 4.50$", at: Point(x: 25, y: 510), size: 10, kerning: 0)
canvas.drawText(message: "with", at: Point(x: 120, y: 550), size: 10, kerning: 0)
canvas.drawText(message: "special guests", at: Point(x: 120, y: 530), size: 10, kerning: 0)
canvas.drawText(message: "wolf gang", at: Point(x: 120, y: 510), size: 10, kerning: 0)
canvas.drawText(message: "at ben h. lewis hall", at: Point(x: 300, y: 550), size: 10, kerning: 0)
canvas.drawText(message: "3443 orange st.", at: Point(x: 300, y: 530), size: 10, kerning: 0)
canvas.drawText(message: "riverside, california", at: Point(x: 300, y: 510), size: 10, kerning: 0)
