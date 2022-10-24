//
//  SecondView.swift
//  ObservableAndEnvironment_Tutorial
//
//  Created by Jero on 2022/10/24.
//

import SwiftUI

struct SecondView: View {
    
    @ObservedObject var demoData: DemoData
    
    var body: some View {
        NavigationView {
            VStack {
                Text("userCount: \(demoData.userCount)")
                Text("currentUser: \(demoData.currentUser)")
                    .padding()
                
                Button {
                    demoData.updateData()
                } label: {
                    Text("Update data")
                }
            }
            .navigationTitle(Text("Detail"))
        }
    }
}
