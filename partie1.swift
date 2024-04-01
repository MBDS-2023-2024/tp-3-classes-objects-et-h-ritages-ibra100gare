class Rectangle {
    static var count = 0
    var longeur: Double
    var largeur: Double

    init(longeur: Double, largeur: Double) {
        self.longeur = longeur
        self.largeur = largeur
        Rectangle.count += 1
    }

    func perimeter() -> Double {
        return 2 * (longeur + largeur)
    }

    func area() -> Double {
        return longeur * largeur
    }
}

var rectangles = [Rectangle(longeur: 3, largeur: 4), Rectangle(longeur: 5, largeur: 6), Rectangle(longeur: 7, largeur: 8)]

rectangles.sort { $0.area() < $1.area() } // Tri par surface
// rectangles.sort { $0.perimeter() < $1.perimeter() } // Tri par périmètre

print("Nombre de rectangles créés: \(Rectangle.count)")
