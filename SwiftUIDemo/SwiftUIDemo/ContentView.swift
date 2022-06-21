//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by DongYouWei on 2022/4/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(landmarks) { landmark in
                NavigationLink(destination: LandMarkDetail(landmark: landmark)){
                        Image(landmark.imageName)
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60.0, height: 60.0)
                            .clipped()
                            .cornerRadius(8)
                        VStack(alignment: .leading){
                            Text(landmark.name)
                            Text(landmark.location)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                    }
                }
            }
            .navigationBarTitle("世界地标")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
