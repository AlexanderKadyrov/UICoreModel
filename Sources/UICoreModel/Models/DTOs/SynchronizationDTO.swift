import Foundation

public struct SynchronizationDTO: Codable, Hashable {
    
    public let templates: [TemplateDTO]
    public let elementTypes: [ElementTypeDTO]
    public let modifierTypes: [ModifierTypeDTO]
    public let elements: [ElementDTO]
    public let modifiers: [ModifierDTO]
    
    public init(templates: [TemplateDTO], elementTypes: [ElementTypeDTO], modifierTypes: [ModifierTypeDTO], elements: [ElementDTO], modifiers: [ModifierDTO]) {
        self.templates = templates
        self.elementTypes = elementTypes
        self.modifierTypes = modifierTypes
        self.elements = elements
        self.modifiers = modifiers
    }
}
