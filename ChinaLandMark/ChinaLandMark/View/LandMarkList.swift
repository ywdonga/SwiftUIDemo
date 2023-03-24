//
//  LandMarkList.swift
//  ChinaLandMark
//
//  Created by dyw on 2022/9/15.
//

import SwiftUI

struct LandMarkList: View {
    
    @State var showFavoriteOnly = false
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $showFavoriteOnly){
                    Text("只展示收藏")
                }
                ForEach(landmarks){ landmark in
                    if !showFavoriteOnly || (showFavoriteOnly && landmark.isFavorite) {
                        NavigationLink(
                            destination: LandMarkDetail(landMark: landmark)
                        ){
                            LandMarkCell(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("世界地标"))
        }
    }
}

struct LandMarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkList()
    }
}
