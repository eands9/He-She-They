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
        list.append(Question(blank: "____ is playing the guitar." , answer: "He is playing the guitar.", word: "He", image: "boy-plays-guitar"))
        list.append(Question(blank: "____ is angry.", answer: "He is angry.", word: "He", image: "HeIsAngry"))
        list.append(Question(blank: "____ is getting bullied.", answer: "He is getting bullied", word: "He", image: "HeIsGettingBullied"))
        list.append(Question(blank: "____ is happy.", answer: "He is happy.", word: "He", image: "HeIsHappy"))
        list.append(Question(blank: "____ is hungry.", answer: "He is hungry.", word: "He", image: "HeIsHungry"))
        list.append(Question(blank: "____ is reading.", answer: "He is reading.", word: "He", image: "HeIsReading"))
        list.append(Question(blank: "____ is running.", answer: "He is running.", word: "He", image: "HeIsRunning"))
        list.append(Question(blank: "____ is sick.", answer: "He is sick.", word: "He", image: "HeIsSick"))
        list.append(Question(blank: "____ is sleeping.", answer: "He is sleeping.", word: "He", image: "HeIsSleeping"))
        list.append(Question(blank: "____ is suprised.", answer: "He is suprised.", word: "He", image: "HeIsSuprised"))
        list.append(Question(blank: "____ is thinking.", answer: "He is thinking.", word: "He", image: "HeIsThinking"))
        list.append(Question(blank: "____ is walking his dog.", answer: "He is walking his dog.", word: "He", image: "HeIsWalkingHisDog"))
        list.append(Question(blank: "____ is wearing glasses.", answer: "He is wearing glasses.", word: "He", image: "HeIsWearingGlasses"))
        list.append(Question(blank: "____ is singing.", answer: "She is singing.", word: "She", image: "little-girl-singing-clipart-1"))
        list.append(Question(blank: "____ is doing homework.", answer: "She is doing homework.", word: "She", image: "SheIsDoingHomework"))
        list.append(Question(blank: "____ are at the beach.", answer: "They are at the beach.", word: "They", image: "TheyAreAtTheBeach"))
        list.append(Question(blank: "____ are dancing.", answer: "They are dancing", word: "They", image: "TheyAreDancing"))
        list.append(Question(blank: "____ are doing the dab.", answer: "They are doing the dab.", word: "They", image: "TheyAreDoingTheDab"))
        list.append(Question(blank: "____ are eating.", answer: "They are eating.", word: "They", image: "TheyAreEating"))
        list.append(Question(blank: "____ are holding ballons.", answer: "They are holding ballons.", word: "They", image: "TheyAreHoldingBallons"))
        list.append(Question(blank: "____ are playing sports.", answer: "They are playing sports.", word: "They", image: "TheyArePlayingSports"))
        list.append(Question(blank: "____ are ready for Halloween.", answer: "They are ready for halloween.", word: "They", image: "TheyAreReadyForHalloween"))
        list.append(Question(blank: "____ are skiing.", answer: "They are skiing", word: "They", image: "TheyAreSkiing"))
        list.append(Question(blank: "____ are standing on planet earth.", answer: "They are standing on planet earth.", word: "They", image: "TheyAreStandingOnPlanetEarth"))
        list.append(Question(blank: "____ are taking a shower.", answer: "They are taking a shower.", word: "They", image: "TheyAreTakingAShower"))
    }
}
