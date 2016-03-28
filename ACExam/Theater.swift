//
//  Theater.swift
//  ACExam
//
//  Created by martin on 2016/3/28.
//  Copyright © 2016年 Frainbow. All rights reserved.
//

import Foundation

class Theater {
    var movieList: [Movie]
    
    init() {
        let movie1 = Movie(
            name: "動物方城市",
            image: "動物方城市",
            date: "2016-02-26",
            description: "動物方城市裡沒有人類的存在，也就如同一般的大都會，彷彿一個種族的大熔爐，在這個只有哺乳類動物存在的城市裡，獵物與獵食者處於一個巧妙的平衡。")

        let movie2 = Movie(
            name: "絕命救援",
            image: "絕命救援",
            date: "2016-03-11",
            description: "改編自真實災難事件，一場規模空前龐大的風暴在美國東北角掀起駭人狂風和滔天巨浪，兩艘大型油輪就在狂風暴雨中撞裂成兩半。一組海岸防衛隊冒著生命危險，在零下低溫和70英尺的巨浪威脅下，靠著單薄的救生艇，要與時間和天氣競賽，搶救岌岌可危的油輪組員性命。")
        
        movieList = [movie1, movie2]
    }
}
