import Foundation

public struct ElementDTO: Codable, Hashable {
    
    public let id: Int?
    public let elementTypeId: Int?
    public let elementId: Int?
    public let contentId: Int?
    public let templateId: Int?
    
    public let configuration: Configuration?
    
    public let createdAt: Date?
    public let updatedAt: Date?
    public let deletedAt: Date?
    
    public init(id: Int?, elementTypeId: Int?, elementId: Int?, contentId: Int?, templateId: Int?, configuration: Configuration?, createdAt: Date?, updatedAt: Date?, deletedAt: Date?) {
        self.id = id
        self.elementTypeId = elementTypeId
        self.elementId = elementId
        self.contentId = contentId
        self.templateId = templateId
        self.configuration = configuration
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deletedAt = deletedAt
    }
}
