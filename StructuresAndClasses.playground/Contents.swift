import UIKit

/*
 Classes have additional capabilities that structure don't have -
 * Inheritance enables one class to inherit properties from another.
 * Type casting enables you to check and interpret the types of a class instance at runtime.
 * Deinitializers enables an instance of a class to free up any resources it has assigned.
 * Reference counting allows more than one references to a class instance.
 
 */

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

// default initializer of Struct
let vga = Resolution(width: 640, height: 480)

// class don't have default initilizer


// Structure and Enumerations are value types
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048
print(cinema.width)
print(hd.width)

enum CompassPoint {
    case north, south, east, west
    mutating func turnNorth() {
        self = .north
    }
}

var currentDirection = CompassPoint.west
let rememberDirection = currentDirection
currentDirection.turnNorth()

print(currentDirection)
print(rememberDirection)

// Classes are reference types

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0

print(tenEighty.frameRate)

// Identity Operators

// To check whether two constants or variable refer to the same single instance:
if tenEighty === alsoTenEighty {
    print("tenEighty and alsoTenEighty refer to the same VideoMode instance")
}

// Experiment of ===
//class A{
//
//}
//
//class B: A {
//
//}
//
//class C: B {
//
//}
//
//let a = A()
//let b = a
//
//if a === b {
// print("sim")
//} else {
//    print("not sim")
//}

