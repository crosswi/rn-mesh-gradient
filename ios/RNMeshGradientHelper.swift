import SwiftUI

typealias RGBA = (red: Double, green: Double, blue: Double, opacity: Double)

class Options: ObservableObject {
    @Published var points: Array<SIMD2<Float>> = [
        [0.0, 0.0], [1.0, 0.0],
        [0.0, 1.0], [1.0, 1.0]
    ]
    @Published var colors: Array<Color> = [
        .red, .orange,
        .blue, .blue
    ]
    @Published var animatedColors: Array<Color> = [
        .red, .blue,
        .purple, .orange
    ]
    @Published var error: String?
    @Published var frequency: Double?
}

struct CustomError: Error {}

func getColors (hexArray: NSArray) throws -> Array<Color> {
    var colors: Array<Color> = []
    
    for hex in hexArray {
        if let hex = hex as? NSString {
            let rgba = convertHexToRgba(hex: hex as NSString)
            colors.append(Color(red: rgba.red, green: rgba.green, blue: rgba.blue, opacity: rgba.opacity))
        } else {
            throw CustomError.init()
        }
    }
    
    return colors
}

func convertHexToRgba (hex: NSString) -> RGBA {
    let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
    var int: UInt64 = 0
    let red, green, blue, alpha: UInt64
    
    Scanner(string: hex).scanHexInt64(&int)
    
    switch hex.count {
        case 3: // RGB (12-bit)
            (red, green, blue, alpha) = (
                (int >> 8) * 17,
                (int >> 4 & 0xF) * 17,
                (int & 0xF) * 17,
                255
            )
        case 6: // RGB (24-bit)
            (red, green, blue, alpha) = (
                int >> 16,
                int >> 8 & 0xFF,
                int & 0xFF,
                255
            )
        case 8: // RGBA (32-bit)
            (red, green, blue, alpha) = (
                int >> 24,
                int >> 16 & 0xFF,
                int >> 8 & 0xFF,
                int & 0xFF
            )
        default:
            (red, green, blue, alpha) = (1, 1, 1, 0)
        }
    
    return (
        red: Double(red) / 255.0,
        green: Double(green)  / 255.0,
        blue: Double(blue) / 255.0,
        opacity: Double(alpha) / 255.0
    )
}
