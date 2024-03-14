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
