//
//  Landmark.swift
//  SwiftUIDemo
//
//  Created by DongYouWei on 2022/4/21.
//

import SwiftUI

struct Landmark:Identifiable{
    var id  = UUID()
    var name :String
    var enName :String
    var location :String
    
    var imageName :String{
        return location + "-" + name
    }
    
}


let landmarks = [
    Landmark(name: "长城", enName: "Great Wall", location: "北京"),
    Landmark(name: "洪崖洞", enName: "HongYa hole", location: "重庆"),
    Landmark(name: "龙象塔", enName: "Dragon like towers", location: "广西南宁"),
    Landmark(name: "大召寺", enName: "Big called temple", location: "内蒙古呼和浩特"),
    Landmark(name: "外滩", enName: "Bund", location: "上海"),
    Landmark(name: "劝业场", enName: "QuanYeChang", location: "天津"),
    Landmark(name: "布达拉宫", enName: "Potala Palace", location: "西藏拉萨")
]

