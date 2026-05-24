import Foundation

public struct SynchronizationDTO: Codable, Hashable {
    
    public let contents: [ContentDTO]
    public let components: [ComponentDTO]
    public let elementTypes: [ElementTypeDTO]
    public let modifierTypes: [ModifierTypeDTO]
    public let elements: [ElementDTO]
    public let modifiers: [ModifierDTO]
    public let visuals: [VisualDTO]
    
    public init(
        contents: [ContentDTO],
        components: [ComponentDTO],
        elementTypes: [ElementTypeDTO],
        modifierTypes: [ModifierTypeDTO],
        elements: [ElementDTO],
        modifiers: [ModifierDTO],
        visuals: [VisualDTO]
    ) {
        self.contents = contents
        self.components = components
        self.elementTypes = elementTypes
        self.modifierTypes = modifierTypes
        self.elements = elements
        self.modifiers = modifiers
        self.visuals = visuals
    }
}
