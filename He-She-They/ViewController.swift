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
    var answerCorrect = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        askQuestion()
     
    }
    
    func startOver(){
        questions = QuestionList()
        askQuestion()
        
    }
    
    func askQuestion() {
        lastQIndex = questions.list.count - 1
        questionIndex = Int.random(in: 0...lastQIndex)
        sentenceLbl.text = questions.list[questionIndex].blankSentence
        answerCorrect = questions.list[questionIndex].answerSentence
        questions.list.remove(at: questionIndex)
        pronounSeg.selectedSegmentIndex = 4
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
        case 3:
            sentenceLbl.text = answerCorrect
        case 4:
            if lastQIndex == 0{
                let alert = UIAlertController(title: "Mission Completed!", message: "You've finished everysingle question, do you want to start over again?", preferredStyle: .alert)
                let restartAction = UIAlertAction(title: "Restart All Questions", style: .default) { (handler) in
                    self.startOver()
                    
                }
                alert.addAction(restartAction)
                present(alert, animated: true, completion: nil)
                
            }
            else{
                askQuestion()
            }
            default:
            sentenceLbl.text = "Nothing"
            }
        }

    }


