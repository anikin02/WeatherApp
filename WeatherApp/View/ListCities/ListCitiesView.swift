//
//  ListCitiesView.swift
//  WeatherApp
//
//  Created by Данил Аникин on 31/10/2025.
//

import SwiftUI

struct ListCitiesView: View {
  @ObservedObject var viewModel = ListCitiesViewModel()

  var body: some View {
    NavigationStack {
      VStack {
        HStack(spacing: 10) {
          Image(systemName: "magnifyingglass")
            .foregroundStyle(.gray)
          TextField("Enter your city here", text: $viewModel.searchText)
            .font(.system(size: 19, weight: .regular))
        }
        .padding()
        
        NavigationLink {
          
        } label: {
          Text("Search")
            .font(.system(size: 19, weight: .bold))
        }
        .buttonStyle(.borderedProminent)
      }
      
      
      
      VStack(alignment: .leading) {
        Text("Recently cities")
          .font(.system(size: 30, weight: .black))
      }
      .frame(maxWidth: .infinity, alignment: .leading)
      .padding(.horizontal)
      
      ScrollView {
        NavigationLink {
          
        } label: {
          CityView(cityName: "Moscow")
        }
        NavigationLink {
          
        } label: {
          CityView(cityName: "Vladiivostok")
        }
      }
      .padding()
    }
  }
}



#Preview {
  ListCitiesView()
}
