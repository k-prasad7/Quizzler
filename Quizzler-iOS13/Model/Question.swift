//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Kiran Prasad on 3/13/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Question{
    let question: String
    var answer: Bool
    
    init(q: String, a: Bool){
        self.question = q
        self.answer = a
    }
}

class QuizManager {
    private var questions: [Question]
    private(set) var currentQuestionIndex = 0
    private(set) var score = 0

    var totalQuestions: Int{
        return questions.count
    }
    
    init(questions: [Question]) {
        self.questions = questions
    }

    func getCurrentQuestion() -> Question {
        return questions[currentQuestionIndex]
    }
    
    func answerCurrentQuestion(with answer: Bool) -> Bool {
        let result = getCurrentQuestion().answer == answer
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
