import Foundation

public struct ModifierDTO: Codable, Hashable {
    
    public let id: UUID?
    public let modifierTypeId: UUID?
    public let elementId: UUID?
    public let configuration: Configuration
    
    public let createdAt: Date?
    public let updatedAt: Date?
    public let deletedAt: Date?
    
    public init(id: UUID?, modifierTypeId: UUID?, elementId: UUID?, configuration: Configuration, createdAt: Date?, updatedAt: Date?, deletedAt: Date?) {
        self.id = id
        self.modifierTypeId = modifierTypeId
        self.elementId = elementId
        self.configuration = configuration
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deletedAt = deletedAt
    }
}
