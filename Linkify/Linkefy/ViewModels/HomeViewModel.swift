
import Foundation

class HomeViewModel: NSObject {
    override init() {
        super.init()
    }
    
    private var links: [Link]?
    public var user: User! {
        return getDummyUser()
    }
    private var lastUpdate: String!
    
    // interactions
    public func createLink(fromURL url: URL) {}
    public func shareLink(withUsers usersi: User...) {}
    public func gatherSiteContent(withPayload payload: String, completion: (Bool) -> ()) {
        guard let url = URL(string: payload) else {
            completion(false)
            return
        }
        // make network call
        completion(true)
    }
    
    // building methods
    public func cell(forIndex indexPath: IndexPath) {}
    public func viewModel(forLink link: Link) {}
    // TODO: profile view model
    
}

// extension for dummy data
extension HomeViewModel {
    private func getDummyLinks() -> [Link] {
        return [Link]()
    }
    private func getDummyUser() -> User {
        return User(name: "Gifton Okoronkwo",
                    username: "FuckingTreyWay",
                    joinDate: Date(),
                    email: "giftono@gmail.com",
                    avatar: "https://via.placeholder.com/150")
    }
}
