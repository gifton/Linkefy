import Foundation
import UIKit

// CGRect is the object that handles location and size of elements
// CGRect is made up of CGSize and CGPoint

// using cgPoint and CGSize calculation, calculate difference in rects for progress, add to begining rect
extension CGRect {
    func animateTo(_ endRect: CGRect, forProgress progress: CGFloat) -> CGRect {
        // check if end width is the same as the start width, check point too
        if endRect.size == size {
            return CGRect(origin: origin.animateTo(endRect.origin, forProgress: progress),
                          size: size)
        }
        // if origin is the same
        else if endRect.origin == origin {
            return CGRect(origin: origin,
                          size: size.animateTo(endRect.size, forProgress: progress))
        }
        
        
        return CGRect(origin: origin.animateTo(endRect.origin, forProgress: progress),
                      size: size.animateTo(endRect.size, forProgress: progress))
    }
    
    
}
