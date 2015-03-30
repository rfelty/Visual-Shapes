// Playground - noun: a place where people can play

import UIKit
import XCPlayground

var str = "Hello, playground"

class Shape: UIView {
    var color:UIColor
    init(color:UIColor) {
        self.color = color
        super.init(frame: CGRectZero)
        self.backgroundColor = color // Note that backgroundColor is a property inherited from UIView
    }
    func getArea() -> Double {
        return 0
    }
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class Square: Shape {
    var width:Int
    init(width:Int, color:UIColor) {
        self.width = width
        super.init(color: color)
        self.frame.size = CGSize(width: width, height: width)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func getArea() -> Double {
        return(Double(width * width))
    }
}

class Circle: Shape {
    var radius:Int
    init(radius:Int, color:UIColor) {
        self.radius = radius
        super.init(color: color)
        self.frame.size = CGSize(width: radius * 2, height: radius * 2)
        self.layer.cornerRadius = CGFloat(radius)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func getArea() -> Double {
        return(M_PI * Double(radius * radius))
    }
}

class Rectangle: Shape {
    var width:Int
    init(width:Int, color:UIColor) {
        self.width = width
        super.init(color: color)
        self.frame.size = CGSize(width: width, height: width)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func getArea() -> Double {
        return(Double(width * width))
    }
}

class RoundedRectangle: Shape {
    var width:Int
    var radius:Int
    init(width:Int, radius:Int, color:UIColor) {
        self.width = width
        self.radius = radius
        super.init(color: color)
        self.frame.size = CGSize(width: width, height: width)
        self.layer.cornerRadius = CGFloat(radius)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func getArea() -> Double {
        return(Double(width * width))
    }
}

var circle = Circle(radius: 50, color: UIColor.blueColor())
var square = Square(width: 100, color: UIColor.redColor())
var rectangle = Rectangle(width: 100, color: UIColor.yellowColor())
var roundedrectangle = RoundedRectangle(width: 100, radius: 10, color: UIColor.brownColor())

circle.center = CGPoint(x: 100, y: 100)
square.center = CGPoint(x: 200, y: 200)
rectangle.center = CGPoint(x: 280, y: 120)
roundedrectangle.center = CGPoint(x: 50, y:180)

let view = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 320))
XCPShowView("Shapes!", view)

view.addSubview(circle)
view.addSubview(square)
view.addSubview(rectangle)
view.addSubview(roundedrectangle)
