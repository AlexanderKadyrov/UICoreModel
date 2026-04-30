import Foundation

enum ConfigurationEdgeInsets: Codable, Hashable {
    
    case value(ConfigurationEdgeInsetsValue)
    case zero
    
    enum CodingKeys: CodingKey {
        case type
        case value
        case zero
    }
    
    enum Errors: Error {
        case badType
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(String.self, forKey: .type)
        switch type {
        case "value":
            let model = try container.decode(ConfigurationEdgeInsetsValue.self, forKey: .value)
            self = .value(model)
        case "zero":
            self = .zero
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
        case .zero:
            try container.encode("zero", forKey: .type)
        }
    }
}
