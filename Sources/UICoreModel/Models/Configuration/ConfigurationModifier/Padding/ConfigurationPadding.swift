import Foundation

enum ConfigurationPadding: Codable, Hashable {
    
    case edgeInsets(ConfigurationEdgeInsets)
    
    enum CodingKeys: CodingKey {
        case type
        case edgeInsets
    }
    
    enum Errors: Error {
        case badType
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(String.self, forKey: .type)
        switch type {
        case "edgeInsets":
            let model = try container.decode(ConfigurationEdgeInsets.self, forKey: .edgeInsets)
            self = .edgeInsets(model)
        default:
            throw Errors.badType
        }
    }
    
    func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .edgeInsets(let model):
            try container.encode("edgeInsets", forKey: .type)
            try container.encode(model, forKey: .edgeInsets)
        }
    }
}
