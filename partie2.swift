
import Foundation

protocol Shape {
    func area() -> Double
    func perimeter() -> Double
}

class Rectangle: Shape {
    var length: Double
    var width: Double
    
    init(length: Double, width: Double) {
        self.length = length
        self.width = width
    }
    
    func area() -> Double {
        return length * width
    }
    
    func perimeter() -> Double {
        return 2 * (length + width)
    }
}

class Circle: Shape {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func area() -> Double {
        return Double.pi * pow(radius, 2)
    }
    
    func perimeter() -> Double {
        return 2 * Double.pi * radius
    }
}

class Triangle: Shape {
    var base: Double
    var height: Double
    var sideA: Double
    var sideB: Double
    
    init(base: Double, height: Double, sideA: Double, sideB: Double) {
        self.base = base
        self.height = height
        self.sideA = sideA
        self.sideB = sideB
    }
    
    func area() -> Double {
        return 0.5 * base * height
    }
    
    func perimeter() -> Double {
        return base + sideA + sideB
    }
}

var shapes: [Shape] = [
    Circle(radius: 3),
    Circle(radius: 4),
    Circle(radius: 5),
    Rectangle(length: 6, width: 7),
    Rectangle(length: 8, width: 9),
    Triangle(base: 10, height: 11, sideA: 12, sideB: 13)
]

for shape in shapes {
    if let circle = shape as? Circle {
        print("Je suis un cercle, mon rayon est \(circle.radius), ma surface est \(circle.area()) et mon périmètre \(circle.perimeter())")
    } else if let rectangle = shape as? Rectangle {
        print("Je suis un rectangle, ma longueur est \(rectangle.length), ma largeur est \(rectangle.width), ma surface est \(rectangle.area()) et mon périmètre \(rectangle.perimeter())")
    } else if let triangle = shape as? Triangle {
        print("Je suis un triangle, ma base est \(triangle.base), ma hauteur est \(triangle.height), mes côtés sont \(triangle.sideA) et \(triangle.sideB), ma surface est \(triangle.area()) et mon périmètre \(triangle.perimeter())")
    }
}
