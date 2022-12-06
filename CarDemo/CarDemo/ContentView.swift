//
//  ContentView.swift
//  CarDemo
//
//  Created by Jero on 2022/12/06.
//


import SwiftUI

struct ContentView: View {
    @StateObject private var carStore : CarStore = CarStore()
    
    
    @State private var index: Int = 0
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(0 ..< carStore.carInfo.count, id: \.self) { index in
                    NavigationLink {
                        CarDetail(carStore: carStore, selectedCar: carStore.carInfo[index])
                    } label: {
                        ListCell(carInfo: carStore.carInfo[index])
                            .foregroundColor(.black)
                    }
                }
            }
            .navigationBarTitle(Text("EV Cars"))
            .navigationBarItems(leading: NavigationLink(destination: AddNewCar(carStore: carStore), label: {
                Text("Add")
            }), trailing: EditButton())
            .onAppear {
                carStore.carInfo = []
                carStore.listentoRealtimeDatabase()
            }
            .onDisappear {
                carStore.stopListening()
            }
        }
    }
  
    func deleteItems(at offets: IndexSet) {
        self.index = index
        carStore.cars.remove(atOffsets: offets)
        carStore.deleteCar(key: carStore.carInfo[index].Id)
    }
}

struct ListCell: View {
    var carInfo: CarInfo
    var body: some View {
        HStack {
            Image(carInfo.cars.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 60)
            Text(carInfo.cars.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
