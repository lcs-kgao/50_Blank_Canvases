//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 400, height: 300)

/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Perlin noise
//Create canvas
let c = Canvas(width: 200, height: 100)

//Create a starting point for travelling through Perlin noise space
var start = 0.0

//create a perlin noise generator
let p = PerlinGenerator()

//Dreaw vertical lines across the canvas
for x in stride(from: 0, to: 200, by: 1){
    // Move through Perlin noise space
    start += 0.01 // Larger means more variation
                  // Smaller means less variation
    
    //Get perlin noise (Gives us a random number between -1 and 1)
    let randomValue = p.perlinNoise(x: start)
    
    //Covert to a range between 0 and 100
    let height = map(value: randomValue, fromLower: -1, fromUpper: 1, toLower: 0, toUpper: 100)
    
    //Make the height an integer (rounds off)
    let i = Int(height)
    
    //Set the colour
    
    //Draw the line
    c.fillColor = Color.blue
    c.drawLine(fromX: x, fromY: 0, toX: x, toY: i)

}






/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

