//
//  Sity.swift
//  WeatherApp
//
//  Created by anikin02 on 11.08.2024.
//

import Foundation

class City {
  var name = String()
  var temperatureNow = String()
  
  init(name: String, temperatureNow: String) {
    self.name = name
    self.temperatureNow = temperatureNow
  }
}
