import Foundation

public struct ConfigurationStrokeValue: Codable, Hashable {
    
    public let cornerRadius: ConfigurationFloat
    public let lineWidth: ConfigurationFloat
    public let color: ConfigurationColor
    
    public init(cornerRadius: ConfigurationFloat, lineWidth: ConfigurationFloat, color: ConfigurationColor) {
        self.cornerRadius = cornerRadius
        self.lineWidth = lineWidth
        self.color = color
    }
}
