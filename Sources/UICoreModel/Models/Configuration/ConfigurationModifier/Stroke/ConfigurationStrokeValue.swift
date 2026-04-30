import Foundation

struct ConfigurationStrokeValue: Codable, Hashable {
    let cornerRadius: ConfigurationFloat
    let lineWidth: ConfigurationFloat
    let color: ConfigurationColor
}
