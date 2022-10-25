//
//  ContentView.swift
//  ObservableAndEnvironment_Tutorial
//
//  Created by Jero on 2022/10/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var demoData: DemoData
    
    var body: some View {
        NavigationView {
            VStack {
                Text("\(demoData.userCount)")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                
                Text("\(demoData.currentUser)")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                
                Button {
                    demoData.updateData()
                } label: {
                    Text("Update Data")
                        .font(.largeTitle)
                }

                NavigationLink(destination: SecondView()) {
                    Text("Next Page")
                        .font(.largeTitle)
                        .padding()
                }
                .navigationBarTitle(Text("Count"))
               
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DemoData())
    }
}
