//
//  QuizManager.swift
//  Quizzler-iOS13
//
//  Created by Kiran Prasad on 3/14/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

class QuizManager {
    private var questions: [Question]
    private(set) var currentQuestionIndex = 0
    private(set) var score = 0
    
    // computed properties: dynamically calculated when asked for. 
    var totalQuestions: Int{
        return questions.count
    }
    
    init(questions: [Question]) {
        self.questions = questions
    }

    func getCurrentQuestion() -> Question {
        return questions[currentQuestionIndex]
    }
    
    func getCurrentAnswerChoice() -> [String] {
        print("Answer Choices: \(questions[currentQuestionIndex].answer)")
        return questions[currentQuestionIndex].answer
    }
    
    func answerCurrentQuestion(with answer: String) -> Bool {
        let result = getCurrentQuestion().correctAnswer == answer
        if result { score += 1 }
        return result
    }
    
    func advanceToNextQuestion() -> Bool {
        guard currentQuestionIndex < questions.count - 1 else { return false }
        currentQuestionIndex += 1
        return true
    }
    
    func reset() {
        currentQuestionIndex = 0
        score = 0
    }
}
