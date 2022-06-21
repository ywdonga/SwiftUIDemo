//
//  LandMarkDetail.swift
//  SwiftUIDemo
//
//  Created by dyw on 2022/6/17.
//

import SwiftUI

struct LandMarkDetail: View {
    let landmark: Landmark
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            Image(landmark.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .navigationBarTitle(Text(landmark.name), displayMode: .inline)
                .frame(minWidth: 0, maxWidth:  .infinity, minHeight: 0, maxHeight: .infinity)
            Text(landmark.location)
                .font(.largeTitle)
                .foregroundColor(.secondary)
                .padding()
        }
    }
}

struct LandMarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LandMarkDetail(landmark: landmarks[0])
        }
    }
}
