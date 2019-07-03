
import Foundation

struct Comment: Codable {
    var content: String
    var date: Date
    var user: User
    var link: Link
    
    init(content: String, date: Date, user: User, link: Link) {
        self.content = content
        self.date = date
        self.user = user
        self.link = link
    }
    
    enum CodingKeys: String, CodingKey {
        case content
        case date
        case user
        case link
    }
}
