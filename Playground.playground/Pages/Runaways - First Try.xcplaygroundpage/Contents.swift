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

canvas.defaultLineWidth = 15


// Draw axis with a scale
canvas.drawAxes(withScale: true, by: 50)

/*:
 ## Show the Assistant Editor
 Don't see any results?
 
 Remember to show the Assistant Editor (1), and then switch to Live View (2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */

// The pink Poster (the runaways)
let pink = Color(hue: 338, saturation: 83, brightness: 89, alpha: 100)
let black = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
let beige = Color(hue: 69, saturation: 6, brightness: 87, alpha: 100)
//pink background
canvas.fillColor = pink
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)
//black bx 1
canvas.drawRectangle(at: Point(x:200, y:200),  width: 400, height: 400, anchoredBy: AnchorPosition.centre, borderWidth: 1)
//bottom left
//black
canvas.drawLine(from: Point(x: 0, y:25 ), to: Point(x: 25, y: 25))
//white

canvas.drawLine(from: Point(x: 25, y: 25), to: Point(x: 25, y: 0))
canvas.drawLine(from: Point(x: 0, y: 50), to: Point(x: 50, y: 50))
canvas.drawLine(from: Point(x: 50, y: 50), to: Point(x: 50, y: 0))
canvas.drawLine(from: Point(x: 0, y: 75), to: Point(x: 75, y: 75))
canvas.drawLine(from: Point(x: 75, y: 75), to: Point(x: 75, y: 0))
canvas.drawLine(from: Point(x: 0, y: 100), to: Point(x: 100, y: 100))
canvas.drawLine(from: Point(x: 100, y: 100), to: Point(x: 100, y: 0))
canvas.drawLine(from: Point(x: 0, y: 125), to: Point(x: 125, y: 125))
canvas.drawLine(from: Point(x: 125, y: 125), to: Point(x: 125, y: 0))
canvas.drawLine(from: Point(x: 0, y: 150), to: Point(x: 150, y: 150))
canvas.drawLine(from: Point(x: 150, y: 150), to: Point(x: 150, y: 0))
canvas.drawLine(from: Point(x: 0, y: 175), to: Point(x: 175, y: 175))
canvas.drawLine(from: Point(x: 175, y: 175), to: Point(x: 175, y: 0))


canvas.drawLine(from: Point(x: 0, y: 375), to: Point(x: 25, y: 375))
canvas.drawLine(from: Point(x: 25, y: 375), to: Point(x: 25, y: 394))
canvas.drawLine(from: Point(x: 0, y: 350), to: Point(x: 50, y: 350))
canvas.drawLine(from: Point(x: 50, y: 350), to: Point(x: 50, y: 394))
canvas.drawLine(from: Point(x: 0, y: 325), to: Point(x: 75, y: 325))
canvas.drawLine(from: Point(x: 75, y: 325), to: Point(x: 75, y: 394))
canvas.drawLine(from: Point(x: 0, y: 300), to: Point(x: 100, y: 300))
canvas.drawLine(from: Point(x: 100, y: 300), to: Point(x: 100, y: 394))
canvas.drawLine(from: Point(x: 0, y: 275), to: Point(x: 125, y: 275))
canvas.drawLine(from: Point(x: 125, y: 275), to: Point(x: 125, y: 394))
canvas.drawLine(from: Point(x: 0, y: 250), to: Point(x: 150, y: 250))
canvas.drawLine(from: Point(x: 150, y: 250), to: Point(x: 150, y: 394))
canvas.drawLine(from: Point(x: 0, y: 225), to: Point(x: 175, y: 225))
canvas.drawLine(from: Point(x: 175, y: 225), to: Point(x: 175, y: 394))
canvas.lineColor = beige
canvas.drawLine(from: Point(x: 0, y: 200), to: Point(x: 400, y: 200))

