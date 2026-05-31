import Foundation

public struct VisualDTO: Codable, Hashable {
    
    public let id: UUID?
    public let parentId: UUID?
    public let componentId: UUID?
    
    public let createdAt: Date?
    public let updatedAt: Date?
    public let deletedAt: Date?
    
    public init(id: UUID?, parentId: UUID?, componentId: UUID?, createdAt: Date?, updatedAt: Date?, deletedAt: Date?) {
        self.id = id
        self.parentId = parentId
        self.componentId = componentId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deletedAt = deletedAt
    }
}
