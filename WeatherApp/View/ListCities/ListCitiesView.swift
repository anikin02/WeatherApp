//
//  ListCitiesView.swift
//  WeatherApp
//
//  Created by Данил Аникин on 31/10/2025.
//

import SwiftUI

struct ListCitiesView: View {
  var body: some View {
    ScrollView {
      CityView(cityName: "Moscow")
      CityView(cityName: "Vladivostok")
    }
    .padding()
  }
}

struct CityView: View {
  let cityName: String
  var body: some View {
    HStack(spacing: 10) {
      Image(systemName: "location.circle")
        .resizable()
        .frame(width: 40, height: 40)
      Text(cityName)
        .font(.system(size: 25, weight: .black))
    }
    .frame(maxWidth: .infinity, alignment: .leading)
  }
}

#Preview {
  ListCitiesView()
}
