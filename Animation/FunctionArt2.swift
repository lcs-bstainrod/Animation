

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class FunctionArt2: NSObject, Sketchable {

    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
   //       Therefore, the line immediately below must always be present.
    var canvas: Canvas

    
    var redBand: [MathFunction] = []
    var smallerredBand: [MathFunction] = []
    // Add many functions
    // This is now a list, or an array, of functions
    var functions: [MathFunction] = []    // empty list
   
    // This function runs once
   override init() {
       
        // Create canvas object – specify size
        canvas = Canvas(width: 800, height: 800)
            
        // Initialize many functions
        for i in 1...20 {
        
            // Create the function
            let newFunction = MathFunction(a: 1.0,
                                           k: 2.5,
                                           d: CGFloat(i) * 35 - CGFloat(canvas.width / 2),
                                           c: 0,
                                           canvas: canvas,
                                           type: .squareRoot)
           
           // Add it to the list
            functions.append(newFunction)
            
        }
        for i in 1...10{
            // Create the function
            let newFunction = MathFunction(a: 1.0,
                                           k: 1.5,
                                           d: CGFloat(i) * 15 - CGFloat(canvas.width / 2),
                                           c: 3,
                                           canvas: canvas,
                                           type: .squareRoot)
            
        }
        // Speed
    canvas.framesPerSecond = 25
    }

    // This function runs repeatedly, forever, to create the animated effect
    func draw() {

        //clear the canvas
        //Color is opaque white change alpha for see through
        canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 100, alpha: 80)
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: 800, height: 800)
       // What frame are we on?
        print(canvas.frameCount)
       
        canvas.defaultLineWidth = 8
    
      
        
        // Set the origin to be the middle of the canvas
        canvas.translate(to: Point(x: canvas.width / 2, y: canvas.height / 2))
       
      // Randomly change the verticle position
let newC = Int.random(in: -150...150)
       

        // Draw the entire list of functions all at once
       for x in 0...canvas.width {
            
            
           // Update the position of all functions
            for function in functions {
                
               // function.c = CGFloat (newC)
                
                // Gradually change the vertical sretch / compression
                function.a = 50 * sin(Degrees(canvas.frameCount).asRadians())
                
                
                function.update(on: canvas,
                                usingInputvalue: x)
           }
        }
        
        
        

    
    }
}
