//
//  ListCitiesViewModel.swift
//  WeatherApp
//
//  Created by Данил Аникин on 31/10/2025.
//

import Foundation

class ListCitiesViewModel: ObservableObject {
  @Published var cities: [String] = []
  @Published var searchText: String = ""
}
