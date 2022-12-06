//
//  CarDetail.swift
//  ListNavDemo
//
//  Created by Neil Smyth on 10/15/19.
//  Copyright © 2019 eBookFrenzy. All rights reserved.
//

import SwiftUI

struct CarDetail: View {
    @ObservedObject var carStore : CarStore
    
    //    let selectedCar: Car
    let selectedCar: CarInfo
    
    var body: some View {
        Form {
            Section(header: Text("Car Details")) {
                Image(selectedCar.cars.imageName)
                    .resizable()
                    .cornerRadius(12.0)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                Text(selectedCar.cars.name)
                    .font(.headline)
                
                Text(selectedCar.cars.description)
                    .font(.body)
                
                HStack {
                    Text("Hybrid").font(.headline)
                    Spacer()
                    Image(systemName: selectedCar.cars.isHybrid ?
                          "checkmark.circle" : "xmark.circle" )
                }
                
                Button {
                    carStore.deleteCar(key: selectedCar.Id)
                } label: {
                    Text("삭제하기")
                }
            }
        }
    }
}
