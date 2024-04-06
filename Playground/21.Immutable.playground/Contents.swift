import UIKit

// immutable
struct Point {
    var x = 0.0
    var y = 0.0
    
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        self.x += deltaX
        self.y += deltaY
    }
    
    mutating func update(x deltaX: Double, y deltaY: Double) {
        self.x = deltaX
        self.y = deltaY
    }
}

var point = Point(x: 1.0, y: 1.0)
print("Before moving: (\(point.x), \(point.y))")
print("========================================")

// mutable
class Point2 {
    var x = 0.0
    var y = 0.0
    
    func moveBy(x deltaX: Double, y deltaY: Double) {
        self.x += deltaX
        self.y += deltaY
    }
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}

var point2 = Point2(x: 1.0, y: 1.0)
print("Before moving: (\(point2.x), \(point2.y))")
