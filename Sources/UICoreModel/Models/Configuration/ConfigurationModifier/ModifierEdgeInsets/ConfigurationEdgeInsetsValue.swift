import Foundation

struct ConfigurationEdgeInsetsValue: Codable, Hashable {
    let top: ConfigurationFloat
    let leading: ConfigurationFloat
    let bottom: ConfigurationFloat
    let trailing: ConfigurationFloat
}
