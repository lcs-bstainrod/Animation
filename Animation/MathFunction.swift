//
// IndividualSpiral.swift
// Animation
//
// Created by Russell Gordon on 2020-11-09.
// Copyright © 2020 Royal St. George's College. All rights reserved.
//
import Foundation
import CanvasGraphics

enum FunctionType {
case linear
case quadratic
case cubic
case squareRoot
case absoluteValue
case exponential
case reciprocal
case sine
}

enum ShapeType {
case none
case star
}

// Define a class that creates a spiral
// - a "class" is just a way to group data (properties) together
// with behaviour (things that we want to happen)
class MathFunction {

// 1. Properties
//
// A property is something that describes the item.
// e.g.: A student at LCS has a house, a hair color, a height
var lastPoint: Point
var a: CGFloat //Verticle stretch / compression / reflection
var k: CGFloat // Horizontal stretch / compression / reflection
var d: CGFloat // horizonatal shift
var c: CGFloat // Verticle shift
var type: FunctionType // tell us what shape / math function to use
 // How much of a delay to have before the animation begins
var shapeType: ShapeType //what shape to draw

// 2. Initializer
//
// An initializer has one job: give each property an initial
// value
init(a: CGFloat,
k: CGFloat,
d: CGFloat,
c: CGFloat,
canvas: Canvas,
type: FunctionType,
delayInSecond: Int = 0,
shapeType: ShapeType = .none) {

// I want every spiral to begin at the same position
self.lastPoint = Point(x: -1 * canvas.width / 2 * 5, y: 7)

//initialize all properties
self.a = a
self.k = k
self.d = d
self.c = c
self.type = type

self.shapeType = shapeType
}

// 3. Methods
//
// Here we describe what behaviour we want to have happen.

// Update (or draw) the position of this spiral
func update(on canvas: Canvas, usingInputvalue x: Int) {



//mkae sure each re-draw of all the functions begin off screen
if x == 0 {

// I want every spiral to begin at the same position
self.lastPoint = Point(x: -1 * canvas.width / 2 * 5, y: 7)

}

// Start drawing after the first frame
if x > 3 && x < canvas.width {

// Determine the next x position
let nextX: CGFloat = CGFloat(x - canvas.width / 2)

// Determine the next y position
var nextY: CGFloat = 0

//set y using quadratic function
switch type {
case .linear:
nextY = a * ((nextX - d) / k) + c
case .quadratic:
nextY = a * pow((nextX - d) / k, 2.0) + c
case .cubic:
nextY = a * pow((nextX - d) / k, 1.0) + c
case .squareRoot:
nextY = a * sqrt((nextX - d) / k) + c
case .absoluteValue:
nextY = a * abs((nextX - d) / k) + c
case .exponential:
nextY = a * exp((nextX - d) / k) + c
case .reciprocal:
nextY = a * 2.0/((nextX - d) / k) + c
case .sine:
nextY = a * sin((nextX.asRadians() - d) / k) + c

}




// Set the next point
let nextPoint = Point(x: nextX, y: nextY)
// print(nextPoint)


//canvas.lineColor = Color(hue: Int.random(in: 180...280), saturation: Int.random(in: 75...100), brightness: Int.random(in: 80...100), alpha: Int.random(in: 0...100))

    canvas.fillColor = Color.red

    
// DRaw shapes or just draw the function
if shapeType == .none {

// Draw a line from the last point to the next point
canvas.drawLine(from: lastPoint, to: nextPoint)

} else if shapeType == .star {

// // Multi Color
//canvas.fillColor = Color(hue: Int.random(in: 0...360), saturation: Int.random(in: 75...100), brightness: Int.random(in: 80...100), alpha: Int.random(in: 70...100))
    canvas.fillColor = Color.red
    //yellow
  //  canvas.fillColor = Color.yellow


var star: [Point] = []
star.append(Point(x: nextX + 0, y: nextY - 50))
star.append(Point(x: nextX + 14, y: nextY - 20))
star.append(Point(x: nextX + 47, y: nextY - 15))
star.append(Point(x: nextX + 23, y: nextY + 7))
star.append(Point(x: nextX + 29, y: nextY + 40))
star.append(Point(x: nextX + 0, y: nextY + 25))
star.append(Point(x: nextX - 29, y: nextY + 40))
star.append(Point(x: nextX - 23, y: nextY + 7))
star.append(Point(x: nextX - 47, y: nextY - 15))
star.append(Point(x: nextX - 14, y: nextY - 20))
canvas.drawCustomShape(with: star)
}

// Set the "new" last point, now that the line is drawn
lastPoint = nextPoint

}


}



}



