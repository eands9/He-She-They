//
//  ViewController.swift
//  He-She-They
//
//  Created by Kyle Hernandez on 12/27/18.
//  Copyright © 2018 Kyle Hernandez. All rights reserved.
//

import UIKit
import Speech

class ViewController: UIViewController {
  
    @IBOutlet weak var pronounSeg: UISegmentedControl!
    @IBOutlet weak var sentenceLbl: UILabel!
    
    var questions = QuestionList()
    var lastQIndex = 0
    var questionIndex = 0
    var answerCorrectSentence = ""
    var pronounCorrect = ""
    var userAnswer = ""
    var randomPick = 0
    let congratulateArray = ["Great Job", "Excellent", "Way to go", "Alright", "Right on", "Correct", "Well done", "Awesome","Give me a high five, You are so smart"]
    let retryArray = ["Try again","Oooops","Don't worry nobody's perfect."]
    
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
        answerCorrectSentence = questions.list[questionIndex].answerSentence
        pronounCorrect = questions.list[questionIndex].answerCorrect
        questions.list.remove(at: questionIndex)
        pronounSeg.selectedSegmentIndex = 4
    }
    @IBAction func pronounSegBtn(_ sender: Any) {
        let pronounIndex = pronounSeg.selectedSegmentIndex
        
        switch pronounIndex {
        case 0:
            userAnswer = "He"
            checkAnswer()
        case 1:
            userAnswer = "She"
            checkAnswer()
        case 2:
            userAnswer = "They"
            checkAnswer()
        case 3:
            sentenceLbl.text = answerCorrectSentence
        case 4:
            if lastQIndex == 0{
                let alert = UIAlertController(title: "Mission Completed!", message: "You've finished everysingle question, do you want to start over again?", preferredStyle: .alert)
                let restartAction = UIAlertAction(title: "Start Over", style: .default) { (handler) in
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
    func checkAnswer() {
        if userAnswer == pronounCorrect{
            randomPositiveFeedback()
            sentenceLbl.text = answerCorrectSentence
        }
        else {
            randomTryAgain()
        }
    }
    func readMe( myText: String) {
        let utterance = AVSpeechUtterance(string: myText )
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        utterance.rate = 0.5
        
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
    func randomPositiveFeedback(){
        randomPick = Int(arc4random_uniform(9))
        readMe(myText: congratulateArray[randomPick])
    }
    func randomTryAgain(){
        randomPick = Int(arc4random_uniform(2))
        readMe(myText: retryArray[randomPick])
    }
}


