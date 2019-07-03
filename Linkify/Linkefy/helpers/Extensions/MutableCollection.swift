import Foundation

extension MutableCollection {
    /// Shuffles the contents of this collection.
    mutating func shuffle() {
        let counter = count
        guard counter > 1 else { return }
        
        for (firstUnshuffled, unshuffledCount) in zip(indices, stride(from: counter, to: 1, by: -1)) {
            let offset: Int = numericCast(arc4random_uniform(numericCast(unshuffledCount)))
            let indexer = index(firstUnshuffled, offsetBy: offset)
            swapAt(firstUnshuffled, indexer)
        }
    }
}
