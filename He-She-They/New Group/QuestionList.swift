//
//  QuestionList.swift
//  He-She-They
//
//  Created by Kyle Hernandez on 12/28/18.
//  Copyright © 2018 Kyle Hernandez. All rights reserved.
//

import Foundation

class QuestionList {
    var list = [Question]()
    
    init() {
        list.append(Question(blank: "___ is singing", answer: "She is singing", word: "She", image: "little-girl-singing-clipart-1"))
        list.append(Question(blank: "___ is playing the guitar", answer: "He is playing the guitar", word: "He", image: "boy-playing-guitar"))
    }
}
