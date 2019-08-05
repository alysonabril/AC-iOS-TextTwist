//
//  TextTwistModel.swift
//  TextTwist
//
//  Created by C4Q  on 10/23/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation

//Have your model choose one of the TestTwistInfo at random on startup.
class TextTwistModel {
    
    func getRandomScrambledLetters() -> TestTwistInfo {
        
        return WordData.allInfo.randomElement()!
    }
    
//    func getMatch() -> [String] {
//        
//    }
}
