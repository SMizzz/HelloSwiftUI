//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Jero on 2022/11/25.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var buttonImage: String {
        get {
            return isSet ? "star.fill" : "star"
        }
    }
    
    var buttonColor: Color {
        isSet ? .yellow : .gray
    }
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: buttonImage)
                .labelStyle(.iconOnly)
                .foregroundColor(buttonColor)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(false))
    }
}
