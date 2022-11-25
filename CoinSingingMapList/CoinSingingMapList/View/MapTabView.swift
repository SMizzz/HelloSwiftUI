//
//  MapTabView.swift
//  CoinSingingMapList
//
//  Created by Jero on 2022/11/02.
//

import SwiftUI
import MapKit

struct MapTabView: View {
    @ObservedObject var coinSingData: CoinSingingStore = CoinSingingStore()
    
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(
        center:
            CLLocationCoordinate2D(
                latitude: 37.564713,
                longitude: 126.975122),
        span: MKCoordinateSpan(
            latitudeDelta: 0.02,
            longitudeDelta: 0.02))
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $region,
                annotationItems: coinSingData.coinSingingstore
            ) { item in
                MapMarker(coordinate: item.coordinate, tint: .purple)
            }
        }
        
    }
}


struct MapTabView_Previews: PreviewProvider {
    static var previews: some View {
        MapTabView()
    }
}
