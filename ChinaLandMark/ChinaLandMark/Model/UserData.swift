//
//  UserData.swift
//  ChinaLandMark
//
//  Created by dyw on 2022/9/15.
//

import SwiftUI
import Combine


class UserData: ObservableObject {
        
    var userLandmarks = landmarks{
        didSet{
            
        }
    }
    

    init() {
        
    }
    
}
