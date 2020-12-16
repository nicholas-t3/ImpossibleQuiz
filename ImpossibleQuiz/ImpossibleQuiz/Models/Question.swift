//
//  Question.swift
//  ImpossibleQuiz
//
//  Created by Heli Bavishi on 12/16/20.
//

import Foundation

class Question {
    let questionNumber: Int
    let question: String
    let answers: [String]
    let correctAnswer: Int
    
    init(questionNumber: Int, question: String, answers: [String], correctAnswer: Int) {
        self.questionNumber = questionNumber
        self.question = question
        self.answers = answers
        self.correctAnswer = correctAnswer
    }
}//End of class
