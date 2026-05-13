import Foundation

public struct ElementDTO: Codable, Hashable {
    
    public let id: Int?
    public let elementTypeId: Int?
    public let elementId: Int?
    
    public let viewId: Int?
    
    public let configuration: Configuration?
    
    public let createdAt: Date?
    public let updatedAt: Date?
    public let deletedAt: Date?
    
    public init(id: Int?, elementTypeId: Int?, elementId: Int?, viewId: Int?, configuration: Configuration?, createdAt: Date?, updatedAt: Date?, deletedAt: Date?) {
        self.id = id
        self.elementTypeId = elementTypeId
        self.elementId = elementId
        self.viewId = viewId
        self.configuration = configuration
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deletedAt = deletedAt
    }
}
