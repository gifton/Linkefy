import Foundation

struct User: Codable {
    var name: String
    var username: String
    var joinDate: Date
    var email: String
    var avatar: String
    
    init(name: String, username: String, joinDate: Date, email: String, avatar: String) {
        self.name = name
        self.username = username
        self.joinDate = joinDate
        self.email = email
        self.avatar = avatar
    }
    
    enum CodingKeys: String, CodingKey {
        case name
        case username
        case joinDate
        case email
        case avatar
    }
    
}
