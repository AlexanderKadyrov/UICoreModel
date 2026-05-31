import Foundation

public struct ElementDTO: Codable, Hashable {
    
    public let id: UUID?
    public let elementTypeId: UUID?
    public let parentId: UUID?
    public let contentId: UUID?
    public let componentId: UUID?
    
    public let configuration: Configuration?
    
    public let createdAt: Date?
    public let updatedAt: Date?
    public let deletedAt: Date?
    
    public init(id: UUID?, elementTypeId: UUID?, parentId: UUID?, contentId: UUID?, componentId: UUID?, configuration: Configuration?, createdAt: Date?, updatedAt: Date?, deletedAt: Date?) {
        self.id = id
        self.elementTypeId = elementTypeId
        self.parentId = parentId
        self.contentId = contentId
        self.componentId = componentId
        self.configuration = configuration
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deletedAt = deletedAt
    }
}
