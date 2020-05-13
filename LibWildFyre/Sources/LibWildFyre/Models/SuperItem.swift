public struct SuperItem<I: Decodable>: Decodable {
    public let count: Int
    public let next: String?
    public let previous: String?
    public let results: [I]
}

public typealias SuperBan = SuperItem<Ban>

public typealias SuperNotification = SuperItem<Notification>

public typealias SuperPost = SuperItem<Post>
