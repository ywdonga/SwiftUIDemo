//
//  LandMarkDetail.swift
//  SwiftUIDemo
//
//  Created by dyw on 2022/6/17.
//

import SwiftUI

struct LandMarkDetail: View {
    let landmark: Landmark
    @State var zooned = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            Image(landmark.imageName)
                .resizable()
                .aspectRatio(contentMode: zooned ? .fill : .fit)
                .navigationBarTitle(Text(landmark.name), displayMode: .inline)
                .frame(minWidth: 0, maxWidth:  .infinity, minHeight: 0, maxHeight: .infinity)
                .onTapGesture {
                    withAnimation() {
                        zooned.toggle()
                    }
                }
            if !zooned {            
                Text(landmark.location)
                    .font(.largeTitle)
                    .foregroundColor(.secondary)
                    .padding()
                    .transition(.move(edge: .trailing))
            }
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
