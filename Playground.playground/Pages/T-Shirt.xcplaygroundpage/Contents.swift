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
let preferredWidth = 600
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
let canvas = Canvas(width: preferredWidth, height: preferredHeight, quality: .Ultra)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

//T-shirt design
canvas.defaultLineWidth = 5
canvas.drawLine(from: Point(x: 300, y: 600), to: Point(x: 200, y: 475 ), capStyle: .round)
canvas.drawLine(from: Point(x: 200, y: 475), to: Point(x: 0, y: 325 ), capStyle: .round)
canvas.drawLine(from: Point(x: 0, y: 325), to: Point(x: 175, y: 200 ))
canvas.drawLine(from: Point(x: 175, y: 200), to: Point(x: 300, y: 0 ))
canvas.drawLine(from: Point(x: 300, y: 0), to: Point(x: 425, y: 200 ))
canvas.drawLine(from: Point(x: 425, y: 200), to: Point(x: 600, y: 325 ))
canvas.drawLine(from: Point(x: 600, y: 325), to: Point(x: 425, y: 450 ))
canvas.drawLine(from: Point(x: 425, y: 450), to: Point(x: 300, y: 600 ))
//done outline
canvas.drawLine(from: Point(x: 295, y: 8), to: Point(x: 295, y: 594 ), capStyle: .round)
canvas.drawLine(from: Point(x: 305, y: 8), to: Point(x: 305, y: 594 ), capStyle: .round)
//Done middle lines
canvas.drawLine(from: Point(x: 305, y: 525), to: Point(x: 362, y: 525 ))
canvas.drawLine(from: Point(x: 362, y: 525), to: Point(x: 362, y: 450 ))
canvas.drawLine(from: Point(x: 362, y: 450), to: Point(x: 305, y: 450))
canvas.drawLine(from: Point(x: 275, y: 475), to: Point(x: 295, y: 475))
canvas.drawLine(from: Point(x: 275, y: 475), to: Point(x: 275, y: 400))
canvas.drawLine(from: Point(x: 275, y: 400), to: Point(x: 295, y: 400))
canvas.drawLine(from: Point(x: 67, y: 375), to: Point(x: 530, y: 375))
canvas.drawLine(from: Point(x:71 , y:275 ), to: Point(x:530 , y:275 ))
canvas.drawLine(from: Point(x: 305, y: 275), to: Point(x: 305, y: 295))
canvas.drawLine(from: Point(x: 305, y: 275), to: Point(x: 425, y: 200))
canvas.drawLine(from: Point(x: 525, y: 375), to: Point(x: 525, y: 275))
canvas.drawLine(from: Point(x: 175, y: 200), to: Point(x: 175, y: 455))
canvas.drawLine(from: Point(x: 425, y: 375), to: Point(x: 425, y: 450))

//shape
canvas.drawLine(from: Point(x: 450, y: 375), to: Point(x: 450, y: 325))
canvas.drawLine(from: Point(x: 450, y: 325), to: Point(x: 525, y: 325))
//shape
canvas.drawLine(from: Point(x: 475, y: 275), to: Point(x: 475, y: 235))
//shape
canvas.drawLine(from: Point(x: 475, y: 275), to: Point(x: 475, y: 300))
canvas.drawLine(from: Point(x: 475, y: 300), to: Point(x: 350, y: 300))
canvas.drawLine(from: Point(x: 350, y: 300), to: Point(x: 350, y: 275))
//shape
canvas.drawLine(from: Point(x: 350, y: 375), to: Point(x: 305, y: 375))
canvas.drawLine(from: Point(x: 350, y: 375), to: Point(x: 350, y: 325))
canvas.drawLine(from: Point(x: 305, y: 375), to: Point(x: 305, y: 325))
canvas.drawLine(from: Point(x: 305, y: 325), to: Point(x: 350, y: 325))
//shape
canvas.drawLine(from: Point(x: 294, y: 100), to: Point(x: 238, y: 100))
//shape
canvas.drawLine(from: Point(x: 294, y: 125), to: Point(x: 275, y: 125))
canvas.drawLine(from: Point(x: 275, y: 125), to: Point(x: 275, y: 275))
//shape
canvas.drawLine(from: Point(x: 305, y: 175), to: Point(x: 350, y: 175))
canvas.drawLine(from: Point(x: 350, y: 175), to: Point(x: 350, y: 100))
canvas.drawLine(from: Point(x: 350, y: 100), to: Point(x: 305, y: 100))
//shape
canvas.drawLine(from: Point(x: 133, y: 425), to: Point(x: 175, y: 425))
canvas.drawLine(from: Point(x: 175, y: 425), to: Point(x: 175, y:455 ))
//shape
canvas.drawLine(from: Point(x: 175, y: 400), to: Point(x: 225, y: 400))
canvas.drawLine(from: Point(x: 225, y: 400), to: Point(x: 225, y:375 ))
canvas.drawLine(from: Point(x: 450, y: 375), to: Point(x: 450, y: 325))
//shape
canvas.drawLine(from: Point(x:175 , y: 300), to: Point(x: 225, y: 300))
canvas.drawLine(from: Point(x: 225, y: 300), to: Point(x: 225, y: 275))
//shape
canvas.drawLine(from: Point(x: 175, y: 225), to: Point(x: 141, y: 225))
//Shape
canvas.drawLine(from: Point(x: 125, y: 275), to: Point(x: 125, y: 250))
canvas.drawLine(from: Point(x: 125, y: 250), to: Point(x: 175, y: 250))
//shape
canvas.drawLine(from: Point(x: 100, y: 375), to: Point(x: 100, y: 325))
canvas.drawLine(from: Point(x: 100, y: 325), to: Point(x: 175, y: 325))
//shape
canvas.drawLine(from: Point(x: 75, y: 375), to: Point(x: 75, y: 275))
//shape
canvas.drawLine(from: Point(x: 350, y: 375), to: Point(x: 350, y: 400))
canvas.drawLine(from: Point(x: 350, y: 400), to: Point(x: 425, y: 400))
canvas.drawLine(from: Point(x: 425, y: 400), to: Point(x: 425, y: 375))
canvas.drawLine(from: Point(x: 450, y: 375), to: Point(x: 450, y: 325))


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
