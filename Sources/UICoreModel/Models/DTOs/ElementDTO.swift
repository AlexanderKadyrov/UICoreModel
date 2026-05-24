import Foundation

public struct ElementDTO: Codable, Hashable {
    
    public let id: Int?
    public let elementTypeId: Int?
    public let parentId: Int?
    public let contentId: Int?
    public let componentId: Int?
    
    public let configuration: Configuration?
    
    public let createdAt: Date?
    public let updatedAt: Date?
    public let deletedAt: Date?
    
    public init(id: Int?, elementTypeId: Int?, parentId: Int?, contentId: Int?, componentId: Int?, configuration: Configuration?, createdAt: Date?, updatedAt: Date?, deletedAt: Date?) {
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
