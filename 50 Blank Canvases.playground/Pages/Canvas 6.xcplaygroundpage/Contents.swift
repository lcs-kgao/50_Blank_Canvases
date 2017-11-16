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
// Example of a function
func someFunction(firstparameterName : Int, secondParameterName : Int) {

//In the function body (between the curly brackets first ParameterName and secondParametername refer to the values provided when the function was called)
    print(firstparameterName)
    print("---")
    print(secondParameterName)
    print("===")
}

someFunction(firstparameterName: 5, secondParameterName: 7)
someFunction(firstparameterName: 15, secondParameterName: 10)
someFunction(firstparameterName: 100000000, secondParameterName: 1)

func drawRegularPolygon(withSides : Int, sideLength: Int, StartX : Int, StartY : Int){
    //Find interior angle
    let interior = (withSides - 2) * 180 / withSides

    //Find the exterior angle
    let exterior = 180 - interior
    
    //Move to the starting posisiton
    canvas.translate(byX: StartX, byY: StartY)
    
    //loop for however many sies we have
    for _ in 1...withSides{
        
        //Draw the line
        canvas.drawLine(fromX: 0, fromY: 0, toX: sideLength, toY: 0)
        
        //tranlate to end of the line (move the turtle
        canvas.translate(byX: sideLength, byY: 0)
        
        //Rotate
        canvas.rotate(by: Degrees(exterior))
    }
}

drawRegularPolygon(withSides: <#T##Int#>, sideLength: <#T##Int#>, StartX: <#T##Int#>, StartY: <#T##Int#>)
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

