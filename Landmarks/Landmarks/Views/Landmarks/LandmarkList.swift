//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Jero on 2022/11/25.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    var filteredLandmarks: [Landmark] {
        get {
            return modelData.landmarks.filter { landmark in
                let result = (!showFavoritesOnly || landmark.isFavorite)
                return result
            }
        }
    }
    
//    var filteredLandmarks: [Landmark] {
//        landmarks.filter { landmark in
//            // landmark.isFavorite가 true일 때
//            (!showFavoritesOnly || landmark.isFavorite)
//        }
    //    }
    
    var body: some View {
        NavigationStack {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorite")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Landmarks")
            
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach (["iPhone SE (3rd generation)", "iPhone 14 Pro", "iPad (10th generation)"], id: \.self) { deviceName in
            LandmarkList()
                .environmentObject(ModelData())
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
