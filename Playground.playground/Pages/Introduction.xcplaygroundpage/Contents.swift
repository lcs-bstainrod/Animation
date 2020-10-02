//: [Previous](@previous) / [Next](@next)
//: # Introduction
//:
//: This is a playground that will let you draw shapes and other graphics easily.
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 10 and 11.
 */
let preferredWidth = 400
let preferredHeight = 400
/*:
 ## Required code
 
 Lines 19 to 27 are required to make the playground run.
 
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
 
 Beginning on line 38, write a meaningful comment.
 
 You can remove the code on line 39 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 */

// Draw the six lines to start the design (bottom-left corne)
canvas.drawAxes()
canvas.drawLine(from: Point(x: 0, y: 7 * 50), to: Point(x: 1 * 50, y: 0))
canvas.drawLine(from: Point(x: 0, y: 6 * 50), to: Point(x: 2 * 50, y: 0))
canvas.drawLine(from: Point(x: 0, y: 5 * 50), to: Point(x: 3 * 50, y: 0))
canvas.drawLine(from: Point(x: 0, y: 4 * 50), to: Point(x: 4 * 50, y: 0))
canvas.drawLine(from: Point(x: 0, y: 3 * 50), to: Point(x:  5 * 50, y: 0))
canvas.drawLine(from: Point(x: 0, y: 2 * 50), to: Point(x: 6 * 50, y: 0))
canvas.drawLine(from: Point(x: 0, y: 1 * 50), to: Point(x: 7 * 50, y: 0))
canvas.drawLine(from: Point(x: 0, y: 0), to: Point(x: 0, y: 400), lineWidth:15)
canvas.drawLine(from: Point(x: 0, y: 0), to: Point(x: 400, y: 0), lineWidth:15)
canvas.drawLine(from: Point(x: 400, y: 0), to: Point(x:400, y: 400), lineWidth:15)
canvas.drawLine(from: Point(x: 400, y: 400), to: Point(x: 0, y: 400), lineWidth:15 )
canvas.drawLine(from: Point(x: 400, y: 400), to: Point(x:350, y:0))
canvas.drawLine(from: Point(x: 400, y: 350), to: Point(x:300, y:0))
canvas.drawLine(from: Point(x: 400, y: 300), to: Point(x:250, y:0))
canvas.drawLine(from: Point(x: 400, y: 250), to: Point(x:200, y:0))
canvas.drawLine(from: Point(x: 400, y: 200), to: Point(x:150, y:0))
canvas.drawLine(from: Point(x: 400, y: 150), to: Point(x:100, y:0))
canvas.drawLine(from: Point(x: 400, y: 100), to: Point(x:50, y:0))
canvas.drawLine(from: Point(x: 400, y: 50), to: Point(x:0, y:0))
canvas.drawLine(from: Point(x: 0, y: 350), to: Point(x:350, y:400))
canvas.drawLine(from: Point(x: 0, y: 300), to: Point(x:300, y:400))
canvas.drawLine(from: Point(x: 0, y: 250), to: Point(x:250, y:400))
canvas.drawLine(from: Point(x: 0, y: 200), to: Point(x:200, y:400))
canvas.drawLine(from: Point(x: 0, y: 150), to: Point(x:150, y:400))
canvas.drawLine(from: Point(x: 0, y: 100), to: Point(x:100, y:400))
canvas.drawLine(from: Point(x: 0, y: 50), to: Point(x:50, y:400))
canvas.drawLine(from: Point(x: 350, y: 400), to: Point(x:400, y:50))
canvas.drawLine(from: Point(x: 300, y: 400), to: Point(x:400, y:100))
canvas.drawLine(from: Point(x: 250, y: 400), to: Point(x:400, y:150))
canvas.drawLine(from: Point(x: 200, y: 400), to: Point(x:400, y:200))
canvas.drawLine(from: Point(x: 150, y: 400), to: Point(x:400, y:250))
canvas.drawLine(from: Point(x: 100, y: 400), to: Point(x:400, y:300))

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
