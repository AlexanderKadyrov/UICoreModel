import Foundation

public struct ContentDTO: Codable, Hashable {
    
    public let id: Int?
    
    public let value: ContentValueDTO
    
    public let createdAt: Date?
    public let updatedAt: Date?
    public let deletedAt: Date?
    
    public init(id: Int?, value: ContentValueDTO, createdAt: Date?, updatedAt: Date?, deletedAt: Date?) {
        self.id = id
        self.value = value
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deletedAt = deletedAt
    }
}
