//
//  Question.swift
//  He-She-They
//
//  Created by Kyle Hernandez on 12/28/18.
//  Copyright © 2018 Kyle Hernandez. All rights reserved.
//

import Foundation

class Question{
    let blankSentence: String
    let answerSentence: String
    let answerCorrect: String
    let imageName: String
    
    init (blank: String, answer: String, word: String, image: String){
        blankSentence = blank
        answerSentence =  answer
        answerCorrect = word
        imageName = image
    }
}
