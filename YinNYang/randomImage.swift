//
//  randomImage.swift
//  YinNYang
//
//  Created by Alikeju Adejo on 7/19/17.
//  Copyright © 2017 Alikeju Adejo. All rights reserved.
//

import Foundation
import UIKit

struct RandomImage {
  
    static func randomImageView() -> UIImage {
        let randomImagesArray = [
            "asianMan.jpg",
            "whiteGirl.jpg",
            "blackMan.jpg",
            "blackWoman.jpg",
            "whiteMan.jpg"
        ]
        let unsignedArrayCount = UInt32(randomImagesArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        return UIImage(named: randomImagesArray[randomNumber])!
    }
    
}
