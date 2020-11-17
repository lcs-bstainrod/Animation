//
//  IndividualSpiral.swift
//  Animation
//
//  Created by Russell Gordon on 2020-11-09.
//  Copyright © 2020 Royal St. George's College. All rights reserved.
//
import Foundation
import CanvasGraphics

// Define a class that creates a spiral
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
    
    // 2. Initializer
    //
    //    An initializer has one job: give each property an initial
    //    value
    init(a: CGFloat,
         k: CGFloat,
         d: CGFloat,
         c: CGFloat,
         canvas: Canvas){
        
        // I want every spiral to begin off the left side of the canvas
        self.lastPoint = Point(x: -1 * canvas.width / 2-5, y: 0)
        
        self.a = a
        self.k = k
        self.d = d
        self.c = c
        
    }
    
    // 3. Methods
    //
    //    Here we describe what behaviour we want to have happen.
    
    // Update (or draw) the position of this spiral
    func update(on canvas: Canvas) {

        // Start drawing after the first frame
        if canvas.frameCount > 0 {

            
            let nextX: CGFloat = CGFloat(canvas.frameCount - canvas.width / 2)
          
            var nextY: CGFloat = 0
          
            nextY = a * pow((nextX - d) / k, 2.0) + c
            
            
            let nextPoint = Point(x: nextX, y: nextY)
           
            
            // Set the line color
            canvas.lineColor = Color(hue: 0,
                                     saturation: 80,
                                     brightness: 90,
                                     alpha: 100)

            // Draw a line from the last point to the next point
            canvas.drawLine(from: lastPoint, to: nextPoint)

            // Set the "new" last point, now that the line is drawn
            lastPoint = nextPoint

        }
        

        
    }
}
