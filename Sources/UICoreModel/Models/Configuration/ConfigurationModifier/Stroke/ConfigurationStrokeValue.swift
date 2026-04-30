import Foundation

public struct ConfigurationStrokeValue: Codable, Hashable {
    public let cornerRadius: ConfigurationFloat
    public let lineWidth: ConfigurationFloat
    public let color: ConfigurationColor
}
