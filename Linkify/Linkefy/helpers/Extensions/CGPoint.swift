
import Foundation
import UIKit

// calculate difference in progress and add to startPosition
extension CGPoint {
    func animateTo(_ point: CGPoint, forProgress progress: CGFloat) -> CGPoint {
        return CGPoint(x: x + (point.x - x) * progress,
                       y: y + (point.y - y) * progress)
    }
}
