import Foundation

public enum ConfigurationModifier: Codable, Hashable, Sendable {
    
    case listRowSeparator(ConfigurationVisibility)
    case foregroundStyle(ConfigurationBackground)
    case listRowInsets(ConfigurationPadding)
    case background(ConfigurationBackground)
    case listRowSpacing(ConfigurationFloat)
    case listStyle(ConfigurationListStyle)
    case cornerRadius(ConfigurationFloat)
    case lineSpacing(ConfigurationFloat)
    case padding(ConfigurationPadding)
    case stroke(ConfigurationStroke)
    case frame(ConfigurationFrame)
    case font(ConfigurationFont)
    case tabItem(ConfigurationTabItem)
    
    enum CodingKeys: CodingKey {
        case type
        case listRowSeparator
        case foregroundStyle
        case listRowInsets
        case background
        case listRowSpacing
        case listStyle
        case cornerRadius
        case lineSpacing
        case padding
        case stroke
        case frame
        case font
        case tabItem
    }
    
    enum Errors: Error {
        case badType
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(String.self, forKey: .type)
        switch type {
        case "listRowSeparator":
            let model = try container.decode(ConfigurationVisibility.self, forKey: .listRowSeparator)
            self = .listRowSeparator(model)
        case "foregroundStyle":
            let model = try container.decode(ConfigurationBackground.self, forKey: .foregroundStyle)
            self = .foregroundStyle(model)
        case "listRowInsets":
            let model = try container.decode(ConfigurationPadding.self, forKey: .listRowInsets)
            self = .listRowInsets(model)
        case "background":
            let model = try container.decode(ConfigurationBackground.self, forKey: .background)
            self = .background(model)
        case "listRowSpacing":
            let model = try container.decode(ConfigurationFloat.self, forKey: .listRowSpacing)
            self = .listRowSpacing(model)
        case "listStyle":
            let model = try container.decode(ConfigurationListStyle.self, forKey: .listStyle)
            self = .listStyle(model)
        case "cornerRadius":
            let model = try container.decode(ConfigurationFloat.self, forKey: .cornerRadius)
            self = .cornerRadius(model)
        case "lineSpacing":
            let model = try container.decode(ConfigurationFloat.self, forKey: .lineSpacing)
            self = .lineSpacing(model)
        case "padding":
            let model = try container.decode(ConfigurationPadding.self, forKey: .padding)
            self = .padding(model)
        case "stroke":
            let model = try container.decode(ConfigurationStroke.self, forKey: .stroke)
            self = .stroke(model)
        case "frame":
            let model = try container.decode(ConfigurationFrame.self, forKey: .frame)
            self = .frame(model)
        case "font":
            let model = try container.decode(ConfigurationFont.self, forKey: .font)
            self = .font(model)
        case "tabItem":
            let model = try container.decode(ConfigurationTabItem.self, forKey: .tabItem)
            self = .tabItem(model)
        default:
            throw Errors.badType
        }
    }
    
    public func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .listRowSeparator(let model):
            try container.encode("listRowSeparator", forKey: .type)
            try container.encode(model, forKey: .listRowSeparator)
        case .foregroundStyle(let model):
            try container.encode("foregroundStyle", forKey: .type)
            try container.encode(model, forKey: .foregroundStyle)
        case .listRowInsets(let model):
            try container.encode("listRowInsets", forKey: .type)
            try container.encode(model, forKey: .listRowInsets)
        case .background(let model):
            try container.encode("background", forKey: .type)
            try container.encode(model, forKey: .background)
        case .listRowSpacing(let model):
            try container.encode("listRowSpacing", forKey: .type)
            try container.encode(model, forKey: .listRowSpacing)
        case .listStyle(let model):
            try container.encode("listStyle", forKey: .type)
            try container.encode(model, forKey: .listStyle)
        case .cornerRadius(let model):
            try container.encode("cornerRadius", forKey: .type)
            try container.encode(model, forKey: .cornerRadius)
        case .lineSpacing(let model):
            try container.encode("lineSpacing", forKey: .type)
            try container.encode(model, forKey: .lineSpacing)
        case .padding(let model):
            try container.encode("padding", forKey: .type)
            try container.encode(model, forKey: .padding)
        case .stroke(let model):
            try container.encode("stroke", forKey: .type)
            try container.encode(model, forKey: .stroke)
        case .frame(let model):
            try container.encode("frame", forKey: .type)
            try container.encode(model, forKey: .frame)
        case .font(let model):
            try container.encode("font", forKey: .type)
            try container.encode(model, forKey: .font)
        case .tabItem(let model):
            try container.encode("tabItem", forKey: .type)
            try container.encode(model, forKey: .tabItem)
        }
    }
}
