
import Foundation

struct Link: Codable {
    var url: String
    var date: Date
    var user: User
    var icon: String?
    var photo: String?
    var description: String?
    var viewCount: Int
    
    enum CodingKeys: String, CodingKey {
        case url, date, user, icon, photo, description, viewCount
    }
}
