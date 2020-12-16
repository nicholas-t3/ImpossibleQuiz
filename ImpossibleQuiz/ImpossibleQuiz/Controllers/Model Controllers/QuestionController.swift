//
//  QuestionController.swift
//  ImpossibleQuiz
//
//  Created by Heli Bavishi on 12/16/20.
//

import Foundation

class QuestionController {
    
    //Source of Truth
    var questions: [Question] = []
    
    //Shared Instance
    static let sharedInstance = QuestionController()
    
    let question1 = Question(questionNumber: 1, question: "HOW MANY HOLES IN A POLO", answers: ["ONE","TWO","THREE","FOUR"], correctAnswer: 3)
    let question2 = Question(questionNumber: 2, question: "CAN A MATCH BOX", answers: ["YES", "NO", "NO,BUT A TIN CAN","YES, ONE BEAT MIKE TYSON"], correctAnswer: 2)
    let question3 = Question(questionNumber: 3, question: "SDRAWKCAB NOITSEUQ SIHT REWSNA", answers: ["K.O", "WHAT?", "I DON'T UNDERSTAND","TENNIS ELBOW"], correctAnswer: 0)
    let question4 = Question(questionNumber: 4, question: "WHAT DO YOU CALL A WINGLESS FLY", answers: ["A FLAP", "A WALK", "A PLUM","JASON"], correctAnswer: 3)
    let question5 = Question(questionNumber: 5, question: "MARY ROSE SAT ON A PIN", answers: ["O RLY?", "MARY ROSE", "BURST HER PILES","AHAHAHAHAAA"], correctAnswer: 1)
    let question6 = Question(questionNumber: 6, question: "WHAT ARE THE MAIN INGREDIENTS OF SHAMPOO?", answers: ["CRICKET CRAP", "BABYCHAM AND HUMAN FAECES", "ROCKS AND SAUSAGES","CATS AND WHELKS"], correctAnswer: 1)
    let question7 = Question(questionNumber: 7, question: "BRIDGET MAKES EVERYONE...", answers: ["GAY", "STRAIGHT", "B1","TOM CRUISE"], correctAnswer: 3)
    let question8 = Question(questionNumber: 8, question: "WHICH IS THE CORRECT SPELLING", answers: ["SLAP-ME-DO", "SLAPP-ME-DO", "SPAPP-ME-DO","SPLAPP-ME-DO"], correctAnswer: 3)
    let question9 = Question(questionNumber: 9, question: "SHANGHAI?", answers: ["IS INDEED THE LARGEST CITY IN CHINA", "NAEVER BEEN", "WHY IS THERE A QUESTION MARK?","NO, ABOUT 20CM OFF THE GROUND"], correctAnswer: 3)
    
    
}//End of class
