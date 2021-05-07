//
//  TodayWeatherView.swift
//  WeatherAppAppAppApp
//
//  Created by This Is Alec's Account on 5/6/21.
//

import SwiftUI

struct TodayWeatherView: View {
    @ObservedObject var cityVM: CityViewViewModel
    var body: some View {
        VStack(spacing: 10) {
            Text("Today")
                .font(.largeTitle)
                .bold()
            
            HStack(spacing: 20) {
                LottieView(name: cityVM.getLottieAnimation(icon: cityVM.weatherIcon))
                    .frame(width: 100, height: 100)
                
                VStack(alignment: .leading) {
                    Text("\(cityVM.temperature)°F")
                        .font(.system(size: 42))
                    Text(cityVM.conditions)
                }
            }
            
            HStack {
                Spacer()
                widgetView(image: "tornado", color: .black, title: "9\(cityVM.windSpeed)mi/hr")
                Spacer()
                widgetView(image: "drop.fill", color: .blue, title: "possibly \(cityVM.humidity)")
                Spacer()
                widgetView(image: "book.fill", color: .red, title: "-\(cityVM.rainChances)")
                Spacer()
            }
        }
        
        .padding()
        .foregroundColor(.white)
        .background(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.5), Color.blue]), startPoint: .top, endPoint: .bottom)).opacity(0.3))
    }
    
    private func widgetView(image: String, color: Color, title: String) -> some View {
        VStack {
            Image(systemName: image)
                .padding()
                .font(.title)
                .foregroundColor(color)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
            
            Text(title)
        }
    }
}

struct TodayWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
