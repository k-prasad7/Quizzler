//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Kiran Prasad on 3/14/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain{
//    let exitStatement = "Congratulations! You have completed the 'Are You A Closeted Weeb' Test!"
//    let animeQuiz = [
//        Question(q:"Hello Senpai. You have come to die, no?", a: false),
//        Question(q: "Every mech pilot's first lesson is to shout their attacks before executing them, for maximum efficiency.", a: true),
//        Question(q: "Waifus are necessary.", a: false),
//        Question(q: "VTubers are a curse upon the Earth.", a: true),
//        Question(q: "Screaming makes you stronger.", a: true),
//    ]
//    let defaultQuestions = [
//        Question(q: "Approximately one quarter of human bones are in the feet.", a: true),
//        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: true),
//        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: true),
//        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: false),
//        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: true),
//        Question(q: "You can lead a cow down stairs but not up stairs.", a: false),
//        Question(q: "Google was originally called 'Backrub'.", a: true),
//        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: true),
//        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: false),
//        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: false),
//        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: true)
//    ]
    let exitStatement = "Congratulations! You have completed the Quiz!"
    let multiChoiceQuiz = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]

    init() {}
}
