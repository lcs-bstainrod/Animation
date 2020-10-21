//
//  BasicSketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

class FiveCircless: NSObject, Sketchable {
    
    
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // Position of circle
    var x = 250
    var x1 = 250
    var x2 = 250
    var x3 = 250
    var x4 = 250
    
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
     
        x += 1
        // Draw an ellipse in the middle of the canvas
        //top line moving right ++
        canvas.drawEllipse(at: Point(x: x, y: 250), width: 50, height: 50)
        canvas.fillColor = Color(hue: 274, saturation: 100, brightness: 100, alpha: 100)
        x1 += 1
        //bottom line moving right ++
        canvas.drawEllipse(at: Point(x: x, y: 450), width: 50, height: 50)
        canvas.fillColor = Color(hue: 00, saturation: 0, brightness: 0, alpha: 100)
        x2 += 1
        //middle line moving right ++
        canvas.drawEllipse(at: Point(x: x2, y: 50), width: 50, height: 50)
        canvas.fillColor = Color(hue: 36, saturation: 100, brightness: 100, alpha: 100)
       x3 -= 1
        // top line moving left ++
        canvas.drawEllipse(at: Point(x: x3, y: 350), width: 50, height: 50)
        canvas.fillColor = Color(hue: 250, saturation: 100, brightness: 100, alpha: 100)
        // bottom line moving left
        canvas.drawEllipse(at: Point(x: x3, y: 150), width: 50, height: 50)
        canvas.fillColor = Color(hue: 94, saturation: 100, brightness: 100, alpha: 100)
    }
    
}



