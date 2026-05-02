import Foundation

public struct ModifierTypeDTO: Codable, Hashable {
    
    public let id: Int?
    public let name: ModifierNameDTO
    
    public init(id: Int?, name: ModifierNameDTO) {
        self.id = id
        self.name = name
    }
}
