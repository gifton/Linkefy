
import Foundation
import UIKit

// make button pop  white highlight on click,
// make button partially transparent when disabled

extension UIButton {
    public func disableButton() {
        layer.opacity = 0.4
        isUserInteractionEnabled = false
        self.showsTouchWhenHighlighted = false
    }
    public func enableButton() {
        layer.opacity = 1.0
        self.showsTouchWhenHighlighted = true
        isUserInteractionEnabled = true
    }
}
