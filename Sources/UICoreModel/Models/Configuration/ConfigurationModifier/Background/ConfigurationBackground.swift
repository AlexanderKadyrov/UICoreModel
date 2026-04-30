import Foundation

public enum ConfigurationBackground: Codable, Hashable {
    
    case color(ConfigurationColor)
    
    enum CodingKeys: CodingKey {
        case type
        case color
    }
    
    enum Errors: Error {
        case badType
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(String.self, forKey: .type)
        switch type {
        case "color":
            let model = try container.decode(ConfigurationColor.self, forKey: .color)
            self = .color(model)
        default:
            throw Errors.badType
        }
    }
    
    public func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .color(let model):
            try container.encode("color", forKey: .type)
            try container.encode(model, forKey: .color)
        }
    }
}
