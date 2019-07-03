
import Foundation
import UIKit

// calculate difference in progress and add to startPosition
extension CGSize {
    func animateTo(_ size: CGSize, forProgress progress: CGFloat) -> CGSize {
        return CGSize(width: width + (size.width - width) * progress,
                      height: height + (size.height - width) * progress)
    }
    
    // multiplier for CGSize
    func multiplier(_ multiplier: CGFloat) -> CGSize {
        return CGSize(width: self.width * multiplier, height: self.height * multiplier)
    }
}
