//
//  ContentView.swift
//  ServerDemo_Car
//
//  Created by Jero on 2022/11/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var carStore: CarStore = CarStore(cars: [])
    @State private var webService = WebService()
    
    let url: String = "https://mocki.io/v1/4e3c65b4-d1a9-4293-b0f5-26feef0ad199"
    
    var body: some View {
        NavigationStack {
            VStack {
                List(carStore.cars) { item in
                    HStack {
                        Image(item.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                        Text(item.name)
                    }
                }
            }
            .navigationTitle("Car")
            .navigationBarItems(
                trailing:
                    Button {
                        Task {
                            carStore.cars = try await WebService().fetchData(url: url)
                            ProgressView("Loading...")
                        }
                    } label: {
                        Text("Car List")
                    })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
