//
//  ContentView.swift
//  ChinaLandMark
//
//  Created by dyw on 2022/9/13.
//

import SwiftUI
import WebKit

struct LandMarkDetail: View {
    var body: some View {
        VStack{
            Image("北京-长城")
                .resizable()
                .clipShape(Circle())
                .overlay(Circle().stroke(.white, lineWidth: 4))
                .shadow(radius: 10)
                .frame(width: 250, height: 250, alignment: .center)
            
            VStack(alignment: .leading, spacing: 4){
                Text("长城").font(.title)
                
                HStack{
                    Text("北京")
                    Spacer()
                    Text("北京市")
                }
            }.padding()
        }
    }
}

struct LandMarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkDetail()
    }
}
