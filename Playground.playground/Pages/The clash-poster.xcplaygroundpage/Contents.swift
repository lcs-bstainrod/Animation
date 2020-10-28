let preferredWidth = 500

let preferredHeight = 500

import Cocoa

import PlaygroundSupport

import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)


// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

// Draw axis with a scale
canvas.drawAxes(withScale: true, by: 50)

let orange = Color(hue: 21, saturation: 76, brightness: 94, alpha: 100)
let blue = Color(hue: 201, saturation: 72, brightness: 85, alpha: 65)
let offWhite = Color(hue: 208, saturation: 1, brightness: 88, alpha: 100)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)

canvas.fillColor = orange

//words

