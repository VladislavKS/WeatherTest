import Foundation

struct Weather: Codable, Identifiable {
    var dt: Int
    var temp: Double
    var feels_like: Double
    var humidity: Int
    var pressure: Int
    var dew_point: Double
    var clouds: Int
    var wind_speed: Double
    var wind_deg: Int
    var weather: [WeatherDetail]
    
    enum CodingKey: String {
        case dt
        case temp
        case feels_like
        case humidity
        case pressure
        case dew_point
        case clouds
        case wind_speed
        case wind_deg
        case weather
    }
    
    init() {
        dt = 0
        temp = 0.0
        feels_like = 0.0
        humidity = 0
        pressure = 0
        dew_point = 0.0
        clouds = 0
        wind_speed = 0.0
        wind_deg = 0
        weather = []
    }
}

extension Weather {
    var id: UUID {
       return UUID()
   }
}
