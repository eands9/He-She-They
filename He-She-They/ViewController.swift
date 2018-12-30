//
//  ViewController.swift
//  He-She-They
//
//  Created by Kyle Hernandez on 12/27/18.
//  Copyright © 2018 Kyle Hernandez. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
  
    @IBOutlet weak var pronounSeg: UISegmentedControl!
    @IBOutlet weak var sentenceLbl: UILabel!
    
    var questions = QuestionList()
    var lastQIndex = 0
    var questionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        askQuestion()
     
    }
    
    func askQuestion() {
        lastQIndex = questions.list.count - 1
        questionIndex = Int.random(in: 0...lastQIndex)
        sentenceLbl.text = questions.list[questionIndex].blankSentence
        questions.list.remove(at: questionIndex)
    }

    @IBAction func pronounSegBtn(_ sender: Any) {
        let pronounIndex = pronounSeg.selectedSegmentIndex
        
        switch pronounIndex {
        case 0:
            sentenceLbl.text = "He"
        case 1:
            sentenceLbl.text = "She"
        case 2:
            sentenceLbl.text = "They"
        default:
            sentenceLbl.text = "Nothing"
        }
    }
    @IBAction func nextBtn(_ sender: Any) {
        askQuestion()
    }
    
}

