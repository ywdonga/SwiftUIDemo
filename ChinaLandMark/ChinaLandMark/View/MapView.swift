//
//  MapView.swift
//  ChinaLandMark
//
//  Created by dyw on 2022/9/13.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    let coordinate2D: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span =  MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        uiView.setRegion(MKCoordinateRegion(center: coordinate2D, span: span), animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate2D: CLLocationCoordinate2D(latitude: 22.0986, longitude: 112.23434545))
    }
}
