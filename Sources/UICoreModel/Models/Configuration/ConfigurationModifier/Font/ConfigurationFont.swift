import Foundation

enum ConfigurationFont: Codable, Hashable {
    
    case value(ConfigurationFontValue)
    
    enum CodingKeys: CodingKey {
        case type
        case value
    }
    
    enum Errors: Error {
        case badType
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(String.self, forKey: .type)
        switch type {
        case "value":
            let model = try container.decode(ConfigurationFontValue.self, forKey: .value)
            self = .value(model)
        default:
            throw Errors.badType
        }
    }
    
    func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .value(let model):
            try container.encode("value", forKey: .type)
            try container.encode(model, forKey: .value)
        }
    }
}
