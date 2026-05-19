import Foundation

public enum ContentValueDTO: Codable, Hashable, Sendable {
    
    case text(String)
    case url(URL)
    
    enum CodingKeys: CodingKey {
        case type
        case value
    }
    
    enum Errors: Error {
        case badType
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(String.self, forKey: .type)
        switch type {
        case "text":
            let value = try container.decode(String.self, forKey: .value)
            self = .text(value)
        case "url":
            let value = try container.decode(URL.self, forKey: .value)
            self = .url(value)
        default:
            throw Errors.badType
        }
    }
    
    public func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .text(let value):
            try container.encode("text", forKey: .type)
            try container.encode(value, forKey: .value)
        case .url(let value):
            try container.encode("url", forKey: .type)
            try container.encode(value, forKey: .value)
        }
    }
}
