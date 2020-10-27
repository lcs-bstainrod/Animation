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
class skittles: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        canvas.framesPerSecond = 1
    }
   
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 100, alpha: 50)
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: 300, height: 300)
        for x in stride(from: 0, through: 300, by: 50) {
           
            // generate the random 0 or 1
            let skittle = Bool.random()
            
            //when the Skittle is 1 (or true) we draw first
            if skittle == true {
             
                // draw the line first, then go every other
                for y in stride(from: 50, through: 250, by: 100) {
                    
                    //draw a line
                    canvas.drawLine(from: Point(x: x, y: y), to: Point(x: x, y: y + 50))
                    
                }
            } else {
                // draw a gap first, then go every other
                for y in stride(from: 0, through: 200, by: 100) {
                    
                    //draw line
                    canvas.drawLine(from: Point(x: x, y: y), to: Point(x: x, y: y + 50))
                }
            }
            
        }

        // start of horizontal lines

        for y in stride(from: 0, through: 300, by: 50) {
            
            let skittles = Bool.random()
            if skittles == true {
                for x in stride(from: 50, through: 250, by: 100) {
                    // draw line
                    canvas.drawLine(from: Point(x: x, y: y), to: Point(x: x + 50, y: y))
                }
                
            } else {
                for x in stride(from: 0, through: 200, by: 100) {
                    canvas.drawLine(from: Point(x: x, y: y), to: Point(x: x + 50, y: y))
                }
            }
        }


    }
    
}

