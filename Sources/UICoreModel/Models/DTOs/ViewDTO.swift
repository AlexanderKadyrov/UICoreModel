import Foundation

public struct ViewDTO: Codable, Hashable {
    
    public let id: Int?
    
    public let createdAt: Date?
    public let updatedAt: Date?
    public let deletedAt: Date?
    
    public init(id: Int?, createdAt: Date?, updatedAt: Date?, deletedAt: Date?) {
        self.id = id
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deletedAt = deletedAt
    }
}
