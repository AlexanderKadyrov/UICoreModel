import Foundation

enum ConfigurationFloat: Codable, Hashable {
    
    case value(CGFloat)
    case infinity
    
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
            let model = try container.decode(CGFloat.self, forKey: .value)
            self = .value(model)
        case "infinity":
            self = .infinity
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
        case .infinity:
            try container.encode("infinity", forKey: .type)
        }
    }
}
