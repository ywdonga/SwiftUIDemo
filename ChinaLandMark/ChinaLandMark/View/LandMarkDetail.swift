//
//  ContentView.swift
//  ChinaLandMark
//
//  Created by dyw on 2022/9/13.
//

import SwiftUI
import WebKit

struct LandMarkDetail: View {
    
    let landMark: Landmark
    
    var body: some View {
        VStack{
            MapView(coordinate2D: landMark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 350)
            
            Image(landMark.imageName)
                .resizable()
                .clipShape(Circle())
                .overlay(Circle().stroke(.white, lineWidth: 4))
                .shadow(radius: 10)
                .frame(width: 250, height: 250, alignment: .center)
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading, spacing: 8){
                HStack{
                    Text(landMark.name).font(.title)
                    Button(action: {
                        
                    }){
                        Image(systemName: "star")
                            .foregroundColor(.yellow)
                    }
                }
                
                HStack{
                    Text(landMark.city)
                    Spacer()
                    Text(landMark.park)
                }
            }
            .padding()
            
            Spacer()
        }
        .navigationBarTitle(Text("长城"), displayMode: .inline)
    }
}

struct LandMarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkDetail(landMark: landmarks[0])
    }
}
