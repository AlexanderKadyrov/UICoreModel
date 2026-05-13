import Foundation

public struct ElementTypeDTO: Codable, Hashable {
    
    public let id: Int?
    public let name: ElementNameDTO
    
    public let createdAt: Date?
    public let updatedAt: Date?
    public let deletedAt: Date?
    
    public init(id: Int?, name: ElementNameDTO, createdAt: Date?, updatedAt: Date?, deletedAt: Date?) {
        self.id = id
        self.name = name
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deletedAt = deletedAt
    }
}
