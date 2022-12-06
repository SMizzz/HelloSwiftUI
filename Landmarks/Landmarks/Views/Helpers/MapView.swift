//
//  MapView.swift
//  Landmarks
//
//  Created by Jero on 2022/11/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    // 위치정보 region
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 34.011_286,
            longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        VStack {
            // Binding 중심점 위치를 업데이트해줘서 사용자가 움직이면 바뀐 좌표도 적용가능하다.
            Map(coordinateRegion: $region)
                .onAppear {
                    setRegion(coordinate)
                }
        }
       
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(
                latitudeDelta: 0.2,
                longitudeDelta: 0.2))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate:
                    CLLocationCoordinate2D(
                        latitude: 34.011_286,
                        longitude: -116.166_868))
    }
}
