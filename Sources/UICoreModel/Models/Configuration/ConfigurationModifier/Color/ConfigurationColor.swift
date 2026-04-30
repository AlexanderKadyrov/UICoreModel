import Foundation

public enum ConfigurationColor: Codable, Hashable {
    
    enum CodingKeys: CodingKey {
        case type
        case hex
    }
    
    enum Errors: Error {
        case badType
    }
    
    case hex(String)
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(String.self, forKey: .type)
        switch type {
        case "hex":
            let model = try container.decode(String.self, forKey: .hex)
            self = .hex(model)
        default:
            throw Errors.badType
        }
    }
    
    public func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .hex(let model):
            try container.encode("hex", forKey: .type)
            try container.encode(model, forKey: .hex)
        }
    }
}
