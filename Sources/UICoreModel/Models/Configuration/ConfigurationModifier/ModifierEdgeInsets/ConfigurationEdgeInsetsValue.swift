import Foundation

public struct ConfigurationEdgeInsetsValue: Codable, Hashable, Sendable {
    
    public let top: ConfigurationFloat
    public let leading: ConfigurationFloat
    public let bottom: ConfigurationFloat
    public let trailing: ConfigurationFloat
    
    public init(top: ConfigurationFloat, leading: ConfigurationFloat, bottom: ConfigurationFloat, trailing: ConfigurationFloat) {
        self.top = top
        self.leading = leading
        self.bottom = bottom
        self.trailing = trailing
    }
}
