import Foundation

public struct ViewDTO: Codable, Hashable {
    
    public let id: Int?
    public let parentId: Int?
    public let componentId: Int?
    
    public let createdAt: Date?
    public let updatedAt: Date?
    public let deletedAt: Date?
    
    public init(id: Int?, parentId: Int?, componentId: Int?, createdAt: Date?, updatedAt: Date?, deletedAt: Date?) {
        self.id = id
        self.parentId = parentId
        self.componentId = componentId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deletedAt = deletedAt
    }
}
