//
//  ContentView.swift
//  ViewControllerDemo
//
//  Created by Jero on 2022/11/02.
//

import SwiftUI

struct ContentView: View {
    @State private var imagePickerVisible: Bool = false
    @State private var selectedImage: Image? = Image(systemName: "photo")
    var body: some View {
        ZStack {
            VStack {
                
                // 'selectedImage가 있으면 처리해라'로 ?를 같이 써준다.
                selectedImage?
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Button {
                    imagePickerVisible.toggle()
                } label: {
                    Text("Select an Image")
                        .font(.largeTitle)
                }
            }
            .padding()
            
            if imagePickerVisible {
                
                MyImagePicker(imagePickerVisible: $imagePickerVisible, selectedImage: $selectedImage)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
