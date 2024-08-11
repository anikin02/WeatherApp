//
//  SceneDelegate.swift
//  WeatherApp
//
//  Created by anikin02 on 11.08.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?


  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let windowScene = (scene as? UIWindowScene) else { return }
    window = UIWindow(windowScene: windowScene)
    window?.windowScene = windowScene
    window?.makeKeyAndVisible()
    window?.rootViewController = MainViewController()
  }

}

