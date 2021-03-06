// EmptySketch.swift
// Animation
//
// Created by Russell Gordon on 2020-06-08.
// Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class FunctionArt4: NSObject, Sketchable {

// NOTE: Every sketch must contain an object of type Canvas named 'canvas'
// Therefore, the line immediately below must always be present.
var canvas: Canvas

// Add many functions
// This is now a list, or an array, of functions
var stars: [MathFunction] = [] // empty list

// This function runs once
override init() {

// Create canvas object – specify size
canvas = Canvas(width: 500, height: 500)

// Initialize stars
for i in -2...10 {

// Create the function
let newFunction = MathFunction(a: 4,
k: 10,
d: 0,
c: 130 * CGFloat(i),
canvas: canvas,
type: .absoluteValue,
shapeType: .star)

// Add it to the list
stars.append(newFunction)

}

// Speed
canvas.framesPerSecond = 50
}

// This function runs repeatedly, forever, to create the animated effect
func draw() {

// Clear the canvas
// Opaque white, for now
    canvas.fillColor = Color(hue: 0,
saturation: 0,
brightness: 0,
alpha: 20)

canvas.drawRectangle(at: Point(x: 0, y: 0),
width: canvas.width,
height: canvas.height)

// Set line width for paths
canvas.defaultLineWidth = 1

// Set the origin to be the middle of the canvas
canvas.translate(to: Point(x: canvas.width / 2, y: canvas.height / 2))

// Update the position of all the stars
for function in stars {

function.update(on: canvas,
usingInputvalue: canvas.frameCount)
}


}

}
