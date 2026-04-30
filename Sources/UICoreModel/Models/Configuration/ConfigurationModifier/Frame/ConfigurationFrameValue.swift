import Foundation

public struct ConfigurationFrameValue: Codable, Hashable {
    public let minWidth: ConfigurationFloat?
    public let idealWidth: ConfigurationFloat?
    public let maxWidth: ConfigurationFloat?
    public let minHeight: ConfigurationFloat?
    public let idealHeight: ConfigurationFloat?
    public let maxHeight: ConfigurationFloat?
    public let alignment: ConfigurationAlignment?
}
