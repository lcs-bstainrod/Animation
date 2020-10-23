//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
//: [Previous](@previous) / [Next](@next)
//: # Blank canvas to copy
//:
//: ## To duplicate this page
//:
//: Place your cursor on line 19 of this page, press `Command-A` to select all text, and then `Command-C` to copy.
//:
//: Two-finger tap on the playground, then choose **New Playground Page**:
//:
//: ![new-playground](new-playground.png "New Playground")
//:
//: Move to the new page and press `Command-A` to select all text there, then `Command-V` to paste.
//:
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */




let offwhite = Color(hue: 81, saturation: 5, brightness:88, alpha:100)
let limegreen = Color(hue: 106, saturation: 64, brightness:73, alpha:100)

canvas.fillColor = limegreen

canvas.drawShapesWithBorders = false


// green background
canvas.fillColor = limegreen
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

//black background for bottom part
canvas.fillColor = Color.black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 400)

// Draw a line of circles
canvas.fillColor = limegreen
for y in stride(from: 0, through: 400, by: 40){
    for x in stride(from: 0, through: 400, by: 40) {

        
        //set the fill
        if x == 0 {
            canvas.fillColor = limegreen
            
        } else if x == 400 {
            canvas.fillColor = limegreen
        } else if y == 0 {
            canvas.fillColor = limegreen
        } else if y == 400 {
            canvas.fillColor = limegreen
        } else if x+y == 401 && x != 0 && x != 400 {
            canvas.fillColor = limegreen
        } else if x + y > 400 {
            canvas.fillColor = limegreen
        
        } else {
            canvas.fillColor = offwhite
        }
    //draw the circles
        canvas.drawEllipse(at: Point(x: x, y: y), width: 35, height: 35)
    }
}

canvas.drawText(message: "pixies", at: Point(x: 15, y: 425), size: 65, kerning: 1)
canvas.drawText(message: "saturday", at: Point(x: 15, y: 550), size: 10, kerning: 1)
canvas.drawText(message: "december 12 1986", at: Point(x: 15, y: 535), size: 10, kerning: 1)

canvas.drawText(message: "9 pm over 21", at: Point(x: 15, y: 520), size: 10, kerning: 1)
canvas.drawText(message: "at the rat", at: Point(x: 280, y: 550), size: 10, kerning: 1)
canvas.drawText(message: "528 commonwealth", at: Point(x: 280, y: 535), size: 10, kerning: 1)
canvas.drawText(message: "boston, mass.", at: Point(x: 280, y: 520), size: 10, kerning: 1)

// white writing
canvas.textColor = Color.white
canvas.drawText(message: "with", at: Point(x: 280, y: 455), size: 10, kerning: 1)
canvas.drawText(message: "throwing muses", at: Point(x: 280, y: 440), size: 10, kerning: 1)
canvas.drawText(message: "big dipper", at: Point(x: 280, y: 425), size: 10, kerning: 1)
