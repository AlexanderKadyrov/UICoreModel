import Foundation

public struct ElementTypeDTO: Codable, Hashable {
    
    public let id: Int?
    public let name: ElementNameDTO
    
    public init(id: Int?, name: ElementNameDTO) {
        self.id = id
        self.name = name
    }
}
