import Foundation

struct ConfigurationFrameValue: Codable, Hashable {
    let minWidth: ConfigurationFloat?
    let idealWidth: ConfigurationFloat?
    let maxWidth: ConfigurationFloat?
    let minHeight: ConfigurationFloat?
    let idealHeight: ConfigurationFloat?
    let maxHeight: ConfigurationFloat?
    let alignment: ConfigurationAlignment?
}
