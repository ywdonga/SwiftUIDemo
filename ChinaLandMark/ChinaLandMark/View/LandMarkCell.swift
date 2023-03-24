//
//  LandMarkCell.swift
//  ChinaLandMark
//
//  Created by dyw on 2022/9/15.
//

import SwiftUI

struct LandMarkCell: View {
    
    let landmark: Landmark
    
    var body: some View {
        HStack{
            Image(landmark.imageName)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(8)
            
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandMarkCell_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            LandMarkCell(landmark: landmarks[0])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
