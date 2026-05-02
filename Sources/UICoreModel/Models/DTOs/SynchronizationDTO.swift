import Foundation

public struct SynchronizationDTO: Codable, Hashable {
    
    public let elementTypes: [ElementTypeDTO]
    public let modifierTypes: [ModifierTypeDTO]
    public let elements: [ElementDTO]
    public let modifiers: [ModifierDTO]
    
    public init(elementTypes: [ElementTypeDTO], modifierTypes: [ModifierTypeDTO], elements: [ElementDTO], modifiers: [ModifierDTO]) {
        self.elementTypes = elementTypes
        self.modifierTypes = modifierTypes
        self.elements = elements
        self.modifiers = modifiers
    }
}
