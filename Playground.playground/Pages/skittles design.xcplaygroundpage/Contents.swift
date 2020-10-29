import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: 300, height: 300)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
// generate seven random 0 or 1
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



