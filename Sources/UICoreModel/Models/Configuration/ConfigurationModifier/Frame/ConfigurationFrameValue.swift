import Foundation

public struct ConfigurationFrameValue: Codable, Hashable {
    
    public let minWidth: ConfigurationFloat?
    public let idealWidth: ConfigurationFloat?
    public let maxWidth: ConfigurationFloat?
    public let minHeight: ConfigurationFloat?
    public let idealHeight: ConfigurationFloat?
    public let maxHeight: ConfigurationFloat?
    public let alignment: ConfigurationAlignment?
    
    public init(
        minWidth: ConfigurationFloat?,
        idealWidth: ConfigurationFloat?,
        maxWidth: ConfigurationFloat?,
        minHeight: ConfigurationFloat?,
        idealHeight: ConfigurationFloat?,
        maxHeight: ConfigurationFloat?,
        alignment: ConfigurationAlignment?
    ) {
        self.minWidth = minWidth
        self.idealWidth = idealWidth
        self.maxWidth = maxWidth
        self.minHeight = minHeight
        self.idealHeight = idealHeight
        self.maxHeight = maxHeight
        self.alignment = alignment
    }
}
