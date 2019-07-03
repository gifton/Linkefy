
import Foundation

// A type that represents either a wrapped value or nil

public extension Optional {
    
    // if optional falls through closure is called with a
    // method that returns identical type (type)?
    func getOr(else el:@autoclosure () throws -> Wrapped) rethrows -> Wrapped {
        return try self ?? el()
    }
    
    // allows for addition of a default value to return if optional is invalid
    func getOr(else el:() throws -> Wrapped) rethrows -> Wrapped {
        return try self ?? el()
    }
    
    // calls closure that returns identical type (type)?
    func or(else el:@autoclosure () throws -> Wrapped?) rethrows -> Wrapped? {
        return try self ?? el()
    }
    
    // return another optional value  if parent optional falls through
    func or(else el:() throws -> Wrapped?) rethrows -> Wrapped? {
        return try self ?? el()
    }
}
