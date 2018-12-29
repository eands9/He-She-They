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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        askQuestion()
    }
    
    func askQuestion() {
        let questions = QuestionList()
        let questionIndex = 0
        sentenceLbl.text = questions.list[questionIndex].blankSentence
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
    
}

