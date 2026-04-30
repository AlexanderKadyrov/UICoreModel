import Foundation

public enum ConfigurationElement: Codable, Hashable {
    
    case vStackView(ConfigurationVStackView)
    case hStackView(ConfigurationHStackView)
    
    enum CodingKeys: CodingKey {
        case type
        case vStackView
        case hStackView
    }
    
    enum Errors: Error {
        case badType
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(String.self, forKey: .type)
        switch type {
        case "vStackView":
            let model = try container.decode(ConfigurationVStackView.self, forKey: .vStackView)
            self = .vStackView(model)
        case "hStackView":
            let model = try container.decode(ConfigurationHStackView.self, forKey: .hStackView)
            self = .hStackView(model)
        default:
            throw Errors.badType
        }
    }
    
    public func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .vStackView(let model):
            try container.encode("vStackView", forKey: .type)
            try container.encode(model, forKey: .vStackView)
        case .hStackView(let model):
            try container.encode("hStackView", forKey: .type)
            try container.encode(model, forKey: .hStackView)
        }
    }
}
