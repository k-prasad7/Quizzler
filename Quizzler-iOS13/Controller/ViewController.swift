//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizManager: QuizManager!

    let animeQuiz = [
        Question(q:"Hello Senpai. You have come to die, no?", a: false),
        Question(q: "Every mech pilot's first lesson is to shout their attacks before executing them, for maximum efficiency.", a: true),
        Question(q: "Waifus are necessary.", a: false),
        Question(q: "VTubers are a curse upon the Earth.", a: true),
        Question(q: "Screaming makes you stronger.", a: true),
    ]
    let defaultQuestions = [
        Question(q: "Approximately one quarter of human bones are in the feet.", a: true),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: true),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: true),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: false),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: true),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: false),
        Question(q: "Google was originally called 'Backrub'.", a: true),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: true),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: false),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: false),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: true)
    ]
    
    var questionNumber = 0
    var progressBarPercentage: Float = 0
    var totalScore = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let quizQuestions = animeQuiz
        quizManager = QuizManager(questions: quizQuestions)
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.titleLabel?.text == "True" ? true : false
        let isCorrect = quizManager.answerCurrentQuestion(with: userAnswer)
        
        sender.backgroundColor = isCorrect ? UIColor.green : UIColor.red

        print("totalScore:\(totalScore)")
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { timer in
            sender.backgroundColor = UIColor.clear
            timer.invalidate()
        }
        if !quizManager.advanceToNextQuestion(){
            endQuiz()
        }
        else{
            updateUI()
            updateScoreDisplay() // Update score display
        }

    }
    
    //Defaults to False.
    func updateUI(){
        let currentQuestion = quizManager.getCurrentQuestion()
        questionLabel.text = currentQuestion.question
        let progress = Float(quizManager.currentQuestionIndex) / Float(quizManager.totalQuestions)
        progressBar.setProgress(progress, animated: true)
    }
    
    func updateScoreDisplay() {
        scoreLabel.text = "Score: \(quizManager.score)"
    }
    
    func endQuiz(){
        questionLabel.text = "Congratulations! You have completed the 'Are You A Closeted Weeb' Test!"
        progressBar.progress = 1.0
    }
        
}

