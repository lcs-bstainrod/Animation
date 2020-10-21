//
//  EmptySketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics
// NOTE: This is a completely empty sketch; it can be used as a template.
class MovingSquare: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    // verticle position
    var y = 250
   
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
                
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw()
    {
        // change the verticle position
        y += 1
        //draw circle in the middle of the canvas
        canvas.drawRectangle(at: Point(x: 250, y: y), width: 50, height: 50)
    print("The y position is: \(y)")
    }
    }
    


