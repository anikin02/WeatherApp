//
//  MainViewController.swift
//  WeatherApp
//
//  Created by anikin02 on 11.08.2024.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
  private var locationLabel = UILabel()
  private var temperatureNowLabel = UILabel()
  private var city = City(name: "Vladivostok", temperatureNow: "20°C")
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    generateLocationLable()
    generateTemperatureNowLabel()
    
  }
  
  private func generateLocationLable() {
    locationLabel.text = city.name
    locationLabel.textAlignment = .center
    locationLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
    view.addSubview(locationLabel)
    
    locationLabel.snp.makeConstraints { maker in
      maker.centerX.equalToSuperview()
      maker.top.equalTo(view.safeAreaLayoutGuide).offset(20)
    }
  }
  
  private func generateTemperatureNowLabel() {
    temperatureNowLabel.text = city.temperatureNow
    locationLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
    view.addSubview(temperatureNowLabel)
    
    temperatureNowLabel.snp.makeConstraints { maker in
      maker.top.equalTo(locationLabel.snp.bottom).offset(10)
      maker.centerX.equalToSuperview()
    }
  }
}

