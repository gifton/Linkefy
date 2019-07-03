
import Foundation

class HomeViewModel: NSObject {
    override init() {
        super.init()
    }
    
    private var links: [Link]?
    private var user: User!
    private var lastUpdate: String!
    
    public func cell(forIndex indexPath: IndexPath) {}
    public func createLink(fromURL url: URL) {}
    public func cellViewModelFor(_ link: Link) {}
    // profile view model
    
}

// extension for dummy data
