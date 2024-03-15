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
    @IBOutlet weak var choiceAButton: UIButton!
    @IBOutlet weak var choiceBButton: UIButton!
    @IBOutlet weak var choiceCButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizManager: QuizManager!
    let quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let quizQuestions = quizBrain.multiChoiceQuiz
        quizManager = QuizManager(questions: quizQuestions)
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        guard let userAnswer = sender.titleLabel?.text else {
            print("Button title is nil")
            // Optionally, handle the error case, e.g., show an alert or disable certain UI elements.
            return
        }
        let isCorrect = quizManager.answerCurrentQuestion(with: userAnswer)
        
        sender.backgroundColor = isCorrect ? UIColor.green : UIColor.red
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
        let currentAnswerChoices = quizManager.getCurrentAnswerChoice()
        choiceAButton.setTitle(currentAnswerChoices[0], for: .normal)
        choiceBButton.setTitle(currentAnswerChoices[1], for: .normal)
        choiceCButton.setTitle(currentAnswerChoices[2], for: .normal)

        let progress = Float(quizManager.currentQuestionIndex) / Float(quizManager.totalQuestions)
        progressBar.setProgress(progress, animated: true)
    }
    
    func updateScoreDisplay() {
        scoreLabel.text = "Score: \(quizManager.score)"
    }
    
    func endQuiz(){
        print("QuizBrain exit statement: \(quizBrain.exitStatement)")
        questionLabel.text = quizBrain.exitStatement
        progressBar.progress = 1.0
    }
        
}

