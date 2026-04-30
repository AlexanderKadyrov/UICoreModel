import Foundation

public enum Configuration: Codable, Hashable {
    
    case modifier(ConfigurationModifier)
    case element(ConfigurationElement)
    
    enum CodingKeys: CodingKey {
        case type
        case modifier
        case element
    }
    
    enum Errors: Error {
        case badType
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(String.self, forKey: .type)
        switch type {
        case "modifier":
            let model = try container.decode(ConfigurationModifier.self, forKey: .modifier)
            self = .modifier(model)
        case "element":
            let model = try container.decode(ConfigurationElement.self, forKey: .element)
            self = .element(model)
        default:
            throw Errors.badType
        }
    }
    
    public func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .modifier(let model):
            try container.encode("modifier", forKey: .type)
            try container.encode(model, forKey: .modifier)
        case .element(let model):
            try container.encode("element", forKey: .type)
            try container.encode(model, forKey: .element)
        }
    }
}
