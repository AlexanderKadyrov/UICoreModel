import Foundation

public struct ModifierTypeDTO: Codable, Hashable {
    
    public let id: Int?
    public let name: ModifierNameDTO
    
    public let createdAt: Date?
    public let updatedAt: Date?
    public let deletedAt: Date?
    
    public init(id: Int?, name: ModifierNameDTO, createdAt: Date?, updatedAt: Date?, deletedAt: Date?) {
        self.id = id
        self.name = name
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deletedAt = deletedAt
    }
}
