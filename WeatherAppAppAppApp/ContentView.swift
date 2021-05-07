//
//  ContentView.swift
//  WeatherAppAppAppApp
//
//  Created by This Is Alec's Account on 4/26/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var cityVM = CityViewViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 0) {
                MenuHeaderView(cityVM: cityVM)
                ScrollView(showsIndicators: false) {
                    CityView(cityVM: cityVM)
                    
                }
            }.padding(.top, 40)
        }.background(LinearGradient(gradient: Gradient(colors: [Color("ColorZero"), Color("ColorOne"), Color("ColorTwo"), Color("ColorThree"), Color("ColorFour")]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// API - Application Programming Interface - Software that allows two applications to talk to each other.
// https://openweathermap.org/api
