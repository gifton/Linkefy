
import Foundation
import UIKit

// Device stors all our global static values for things like:
// font
// sizing
// font size
// colors

struct Device {
    static let width  = UIScreen.main.bounds.size.width
    static let height = UIScreen.main.bounds.size.height
    static let frame  = UIScreen.main.bounds
    static let linkCellHeight: CGFloat = 90
    
    enum profileIconDiameter: CGFloat {
        case xSmall = 30.0
        case smalll = 45.0
        case medium = 75.0
        case large  = 100.0
    }
    
    // calculating drawer height will depend on screen height
    // we dont want the drawer to take up 250px on an iphone XR and 250 px on a 5s as well
    enum homeDrawerHeightMultiplier: CGFloat {
        case collapsed = 0.147321429 // 132 on XS Max
        case expanded = 0.578125 // 518 on XS Max
        case standard = 0.279017857 // 250 on XS Max
    }
    
    enum fontSize: CGFloat {
        case xSmall    = 10.0
        case small     = 12.0
        case medium    = 14.0
        case large     = 16.0
        case xLarge    = 18.0
        case xXLarge   = 20.0
        case xXXLarge  = 26.0
        case title     = 70
        case xlTitle   = 100
    }
    
    struct colors {
        // background
        static let primaryPink         = UIColor(hex: "F4EAEA")
        static let darkGreen           = UIColor(hex: "387C82")
        static let lightCellBackground = UIColor.white.withAlphaComponent(0.35)
        static let darkCellBackground  = UIColor.white.withAlphaComponent(0.55)
        
        // text
        static let offWhite            = UIColor(hex: "FBF6EB")
        static let secondaryPink       = UIColor(hex: "E8ADAD")
        static let primaryPurple       = UIColor(hex: "553F5E")
        
        // misc
        static let primaryBlue         = UIColor(hex: "98B9C9")
        static let secondaryBlue       = UIColor(hex: "7E86B7")
        
        
    }
}
