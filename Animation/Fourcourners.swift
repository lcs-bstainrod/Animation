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
class Fourcorners: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    var Offset = 250
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
    
        canvas.drawShapesWithBorders = false
        // Set starting position
   
        //slow down animation
        canvas.framesPerSecond = 25
       
      
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        Offset += 1
        // Draw an ellipse in the middle of the canvas
        //top line moving right ++
        canvas.drawEllipse(at: Point(x: Offset, y: Offset), width: 50, height: 50)
        canvas.fillColor = Color.green
        canvas.drawEllipse(at: Point(x: 500 - Offset, y: Offset), width: 50, height: 50)
        canvas.fillColor = Color.blue
        canvas.drawEllipse(at: Point(x: Offset, y: 500 - Offset), width: 50, height: 50)
        canvas.fillColor = Color.yellow
        canvas.drawEllipse(at: Point(x: 500 - Offset, y: 500 - Offset), width: 50, height: 50)
        canvas.fillColor = Color.red
        
    }
    
}

