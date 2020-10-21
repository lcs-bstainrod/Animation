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
class EmptySketch: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    var x: Int
    var x1:Int
    var x2:Int
    
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
            x += 1
        x1 -= 1
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        //top line moving right
        
        canvas.drawEllipse(at: Point(x: x, y: 250), width: 50, height: 50)
        canvas.fillColor = Color(hue: 274, saturation: 100, brightness: 100, alpha: 100)
        //bottom line moving right
        canvas.drawEllipse(at: Point(x: x, y: 450), width: 50, height: 50)
        canvas.fillColor = Color(hue: 94, saturation: 100, brightness: 100, alpha: 100)
    }
    
}

