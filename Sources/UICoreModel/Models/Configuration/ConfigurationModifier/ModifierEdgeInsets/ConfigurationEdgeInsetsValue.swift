import Foundation

public struct ConfigurationEdgeInsetsValue: Codable, Hashable {
    public let top: ConfigurationFloat
    public let leading: ConfigurationFloat
    public let bottom: ConfigurationFloat
    public let trailing: ConfigurationFloat
}
