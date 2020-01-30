//: # Gig Poster - Practice Task 1
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![undertones-no-grid](undertones-no-grid.png "Undertones")
 ![undertones-with-grid](undertones-with-grid.png "Undertones")

 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let lightGrey = Color(hue: 84, saturation: 6, brightness: 88, alpha: 100)
let deepRed = Color(hue: 7, saturation: 97, brightness: 72, alpha: 100)

// Begin your solution here...

// Draw background
canvas.fillColor = lightGrey
canvas.drawRectangle(at: CGPoint(x: 0, y: 0), width: canvas.width, height: canvas.height)

// Write small text
canvas.textColor = deepRed
canvas.drawText(message: "straight music presents", at: Point(x: 20, y: 550), size: 10, kerning: 0)
canvas.drawText(message: "the undertones", at: Point(x: 20, y: 540), size: 10, kerning: 0)
canvas.drawText(message: "with special guests", at: Point(x: 20, y: 515), size: 10, kerning: 0)
canvas.drawText(message: "the chords", at: Point(x: 20, y: 505), size: 10, kerning: 0)
canvas.drawText(message: "victoria hall hanely", at: Point(x: 150, y: 550), size: 10, kerning: 0)
canvas.drawText(message: "stoke-on-trent, england", at: Point(x: 150, y: 540), size: 10, kerning: 0)
canvas.drawText(message: "tuesday", at: Point(x: 150, y: 515), size: 10, kerning: 0)
canvas.drawText(message: "june 5 1979 / 7:30 pm", at: Point(x: 150, y: 505), size: 10, kerning: 0)
canvas.drawText(message: "advance tickets: £2.00", at: Point(x: 270, y: 550), size: 10, kerning: 0)
canvas.drawText(message: "at the door: £2.50", at: Point(x: 270, y: 540), size: 10, kerning: 0)


// Move the Origin up 400 pixels
canvas.translate(to: Point(x: 0, y: 400))

// Write words
for alpha in 1...20 {
    
    canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100-alpha*4)
    canvas.drawText(message: "understones", at: Point(x: 5, y: -5), size: 60, kerning: 0.6)
        
    canvas.rotate(by: -4.73684211)
    
}


/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multilple times as you make progress on completing this task.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

