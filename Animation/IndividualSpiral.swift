//
//  IndividualSpiral.swift
//  Animation
//
//  Created by Ben Stainrod on 2020-11-09.
//  Copyright © 2020 Royal St. George's College. All rights reserved.
//

import Foundation
import CanvasGraphics

//Define a class that creates a spiral
// - a "class" is just a way to group data (properties) together
//with behaviour (thing that we want to change)
class IndividualSpiral1  {
    

//1. Properties
//
// A property is something that describes the item
//e.g an LCS student has a house hair color height etc..
    var lastPoint: Point
    var angleOffset: Int
//2. Initializer has one job: give each preoperty an initial vale
    init(angleOffset: Int) {
        //I want every spiral to begin at the same positiion
        self.lastPoint = Point(x: 0, y: 0)
        
        // each spiral begins at a slightly different angle
        self.angleOffset = angleOffset
    }
// 3. Methods
//
//here we descrie what behavious we want to have happen.
//e.g an LCS student has to walk talk eat.
    // update draw the position of this spiral
    func update(on canvas: Canvas){
        
        // Start drawing after the first frame
        if canvas.frameCount > 0 {

            // Set the radius
            let radius = CGFloat(canvas.frameCount) / 1

            // Set the angle equal to the frameCount
            let angle = CGFloat(canvas.frameCount + 0)

            // Determine the next x position
            let nextX = cos(angle.asRadians()) * radius

            // Determine the next y position
            let nextY = sin(angle.asRadians()) * radius
        
            // Set the next point
            let nextPoint = Point(x: nextX, y: nextY)
    }

}
}
