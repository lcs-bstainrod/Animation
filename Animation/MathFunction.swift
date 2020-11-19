//
//  IndividualSpiral.swift
//  Animation
//
//  Created by Russell Gordon on 2020-11-09.
//  Copyright © 2020 Royal St. George's College. All rights reserved.
//
import Foundation
import CanvasGraphics

// Enumeration
// defining a list of choices that you want the user of code to be able to select from
enum FunctionType {
    case linear
    case quadratic
    case cubic
    case squareRoot
    case absoluteValue
    case exponetial
    case recoprocal
}

// Define a class that creates a math function
// - a "class" is just a way to group data (properties) together
//   with behaviour (things that we want to happen)
class MathFunction {

    // 1. Properties
    //
    //    A property is something that describes the item.
    //    e.g.: A student at LCS has a house, a hair color, a height
    var lastPoint: Point
    var a: CGFloat  // vertical stretch / compression / reflection
    var k: CGFloat // Horizontal stretch / compression / reflection
    var d: CGFloat //horizontal stretch
    var c: CGFloat //vertical shift
    var type: FunctionType  // tell us what shape / math function to use
    // 2. Initializer
    //
    //    An initializer has one job: give each property an initial
    //    value
    init(a: CGFloat,
         k: CGFloat,
         d: CGFloat,
         c: CGFloat,
         canvas: Canvas,
         type: FunctionType){
        
        // I want every spiral to begin off the left side of the canvas
        self.lastPoint = Point(x: -1 * canvas.width / 2-5, y: 0)
        
        self.a = a
        self.k = k
        self.d = d
        self.c = c
        self.type = type
        
    }
    
    // 3. Methods
    //
    //    Here we describe what behaviour we want to have happen.
    
    // Update (or draw) the position of this spiral
    func update(on canvas: Canvas, usingInputValue x: Int) {

        // Start drawing after the first frame
        if x > 0 && x < canvas.width {

            
            let nextX: CGFloat = CGFloat(canvas.frameCount - canvas.width / 2)
          
           // determine the next y position
            var nextY: CGFloat = 0
          
            switch type {
            case .linear:
                nextY = a * ((nextX - d) / k) + c
            case .quadratic:
                nextY = a * pow((nextX - d) / k, 3.0) + c
            case .cubic:
                nextY = a * pow((nextX - d) / k, 2.0) + c
            case .squareRoot:
                nextY = a * sqrt((nextX - d) / k) + c
            case .absoluteValue:
                nextY = a * abs((nextX - d) / k) + c
            case .exponetial:
                nextY = a * exp((nextX - d) / k) + c
            case .recoprocal:
                nextY = a * 1.0/((nextX - d) / k) + c
    
            }
            // set y using a quadratic function
            
            
            // set the
            let nextPoint = Point(x: nextX, y: nextY)
           
            
            // Set the line color
           // canvas.lineColor = Color(hue: Int.random(in: 240...300), saturation: 100, brightness: 100, alpha: 100)
            canvas.lineColor = Color(hue: Int.random(in: 265...315), saturation: 100, brightness: 85, alpha: Int.random(in: 50...100))
            // Draw a line from the last point to the next point
            canvas.drawLine(from: lastPoint, to: nextPoint)

            // Set the "new" last point, now that the line is drawn
            lastPoint = nextPoint

        }
        

        
    }
}
