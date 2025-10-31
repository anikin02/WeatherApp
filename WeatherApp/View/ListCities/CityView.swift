//
//  CityView.swift
//  WeatherApp
//
//  Created by Данил Аникин on 31/10/2025.
//

import SwiftUI

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
    .padding()
    .overlay(
      Capsule()
        .stroke(.tint, lineWidth: 1)
    )
  }
}
