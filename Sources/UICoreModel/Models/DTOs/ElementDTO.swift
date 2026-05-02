import Foundation

public struct ElementDTO: Codable, Hashable {
    
    public let id: Int?
    public let elementTypeId: Int?
    public let elementId: Int?
    public let configuration: Configuration?
    
    public init(id: Int?, elementTypeId: Int?, elementId: Int?, configuration: Configuration?) {
        self.id = id
        self.elementTypeId = elementTypeId
        self.elementId = elementId
        self.configuration = configuration
    }
}
