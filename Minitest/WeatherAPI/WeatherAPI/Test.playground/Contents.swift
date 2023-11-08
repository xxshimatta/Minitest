import Foundation

struct weather: Codable{
    let list: [List]
}

struct List: Codable{
    let dt: Int
    let dt_txt: String
    var main: Main
    struct Main: Codable{
        let temp: Double
    }
}


let url = URL(string: "https://api.openweathermap.org/data/2.5/forecast?q=Jakarta,id&appid=b9f593c69b4cf60795894fd0002459eb&units=Metric&cnt=40")!


URLSession.shared.dataTask(with: url) { data, _, _ in
    
    if let data = data{
        let result = try? JSONDecoder().decode(weather.self, from: data)
        var i = 0
        let string = result!.list[i].dt_txt
        let modif = String(string.prefix(upTo: string.firstIndex(of: " ")!))
        print("\n")
        print("Weather Forecast")
        while i<40{
            print(modif, " Temperature : ",result!.list[i].main.temp,"°C")
            i += 8
        }
        
    }
}.resume()
