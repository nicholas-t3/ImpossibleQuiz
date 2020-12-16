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
    
    var easyQuestion = [Question(questionNumber: 1, question: "HOW MANY HOLES IN A POLO", answers: ["ONE","TWO","THREE","FOUR"], correctAnswer: 3),
                        Question(questionNumber: 2, question: "CAN A MATCH BOX", answers: ["YES", "NO", "NO,BUT A TIN CAN","YES, ONE BEAT MIKE TYSON"], correctAnswer: 2),
                        Question(questionNumber: 3, question: "SDRAWKCAB NOITSEUQ SIHT REWSNA", answers: ["K.O", "WHAT?", "I DON'T UNDERSTAND","TENNIS ELBOW"], correctAnswer: 0),
                        Question(questionNumber: 4, question: "WHAT DO YOU CALL A WINGLESS FLY", answers: ["A FLAP", "A WALK", "A PLUM","JASON"], correctAnswer: 3),
                        Question(questionNumber: 5, question: "MARY ROSE SAT ON A PIN", answers: ["O RLY?", "MARY ROSE", "BURST HER PILES","AHAHAHAHAAA"], correctAnswer: 1),
                        Question(questionNumber: 6, question: "WHAT ARE THE MAIN INGREDIENTS OF SHAMPOO?", answers: ["CRICKET CRAP", "BABYCHAM AND HUMAN FAECES", "ROCKS AND SAUSAGES","CATS AND WHELKS"], correctAnswer: 1),
                        Question(questionNumber: 7, question: "BRIDGET MAKES EVERYONE...", answers: ["GAY", "STRAIGHT", "B1","TOM CRUISE"], correctAnswer: 3),
                        Question(questionNumber: 8, question: "WHICH IS THE CORRECT SPELLING", answers: ["SLAP-ME-DO", "SLAPP-ME-DO", "SPAPP-ME-DO","SPLAPP-ME-DO"], correctAnswer: 3),
                        Question(questionNumber: 9, question: "SHANGHAI?", answers: ["IS INDEED THE LARGEST CITY IN CHINA", "NAEVER BEEN", "WHY IS THERE A QUESTION MARK?","NO, ABOUT 20CM OFF THE GROUND"], correctAnswer: 3),
                        Question(questionNumber: 10, question: "ON THE SUBJECT OF DRACULA, WHAT IS HIS FAVOURITE FOOD?", answers: ["BLOOD","SHEPHERD'S PIE", "URINE", "CHICKEN CHOW MEIN"], correctAnswer: 1)]
    
    var mediumQuestion = [Question(questionNumber: 1, question: "WHAT ARE CHICK MCNUGGETS MADE OF", answers: ["100% CHICKEN","TASTELESS WHITE FILTH","SOIL","WIN"], correctAnswer: 1),
                          Question(questionNumber: 2, question: "WHAT DOES 'D.N.A' STAND FOR?", answers: ["DEOXYRIBONUCLEIC ACID", "DO NOT ABBREVIATE", "DOORMAT, NICE ABACUS","NATIONAL DYSLEXIC ASSOCIATION"], correctAnswer: 3),
                          Question(questionNumber: 3, question: "I' AM GREEN AND HAVE STICKY BALLS. WHO AM I? ", answers: ["THE INCREDIBLE HULK", "HE-MAN", "THE PRINCE","SLIPPY TOAD"], correctAnswer: 2),
                          Question(questionNumber: 4, question: "WHICH MAGICAL PROPERTY DO DOG EGGS CONTAIN?", answers: ["ETERNAL YOUTH", "BLINDNESS", "OODLES OF CASH","INVINCIBILITY"], correctAnswer: 1),
                          //CHANGE
                          Question(questionNumber: 5, question: "MARY ROSE SAT ON A PIN", answers: ["O RLY?", "MARY ROSE", "BURST HER PILES","AHAHAHAHAAA"], correctAnswer: 1),
                          Question(questionNumber: 6, question: "WHAT ARE THE MAIN INGREDIENTS OF SHAMPOO?", answers: ["CRICKET CRAP", "BABYCHAM AND HUMAN FAECES", "ROCKS AND SAUSAGES","CATS AND WHELKS"], correctAnswer: 1),
                          Question(questionNumber: 7, question: "BRIDGET MAKES EVERYONE...", answers: ["GAY", "STRAIGHT", "B1","TOM CRUISE"], correctAnswer: 3),
                          Question(questionNumber: 8, question: "WHICH IS THE CORRECT SPELLING", answers: ["SLAP-ME-DO", "SLAPP-ME-DO", "SPAPP-ME-DO","SPLAPP-ME-DO"], correctAnswer: 3),
                          Question(questionNumber: 9, question: "SHANGHAI?", answers: ["IS INDEED THE LARGEST CITY IN CHINA", "NAEVER BEEN", "WHY IS THERE A QUESTION MARK?","NO, ABOUT 20CM OFF THE GROUND"], correctAnswer: 3),
                          Question(questionNumber: 10, question: "ON THE SUBJECT OF DRACULA, WHAT IS HIS FAVOURITE FOOD?", answers: ["BLOOD","SHEPHERD'S PIE", "URINE", "CHICKEN CHOW MEIN"], correctAnswer: 1)]
    
    var hardQuestion = [Question(questionNumber: 1, question: "WHICH IS TRUE", answers: ["PSP > DS","DS > PSP","PSP = DS","EGG > 28"], correctAnswer: 3),
                        Question(questionNumber: 2, question: "HOW MANY QUESTIONS DOES THIS QUIZ HAVE", answers: ["100", "200", "NO ONE KNOWS THAT","YOU CAN'T REALLY CLASS THIS AS A QUIZ.."], correctAnswer: 2),
                        Question(questionNumber: 3, question: "SELL YOUR LIVER TO...", answers: ["FILTHY ROMANIANS", "SATAN", "ANNE FRANK","4chan FOR THE LULZ"], correctAnswer: 0),
                        Question(questionNumber: 4, question: "HOW MANY TIMES HAS MICHAEL JACKSON HAD A NOSE JOB?", answers: ["THRICE", "TWICE", "ONCE","NONCE"], correctAnswer: 3),
                        //CHANGE
                        Question(questionNumber: 5, question: "MARY ROSE SAT ON A PIN", answers: ["O RLY?", "MARY ROSE", "BURST HER PILES","AHAHAHAHAAA"], correctAnswer: 1),
                        Question(questionNumber: 6, question: "WHAT ARE THE MAIN INGREDIENTS OF SHAMPOO?", answers: ["CRICKET CRAP", "BABYCHAM AND HUMAN FAECES", "ROCKS AND SAUSAGES","CATS AND WHELKS"], correctAnswer: 1),
                        Question(questionNumber: 7, question: "BRIDGET MAKES EVERYONE...", answers: ["GAY", "STRAIGHT", "B1","TOM CRUISE"], correctAnswer: 3),
                        Question(questionNumber: 8, question: "WHICH IS THE CORRECT SPELLING", answers: ["SLAP-ME-DO", "SLAPP-ME-DO", "SPAPP-ME-DO","SPLAPP-ME-DO"], correctAnswer: 3),
                        Question(questionNumber: 9, question: "SHANGHAI?", answers: ["IS INDEED THE LARGEST CITY IN CHINA", "NAEVER BEEN", "WHY IS THERE A QUESTION MARK?","NO, ABOUT 20CM OFF THE GROUND"], correctAnswer: 3),
                        Question(questionNumber: 10, question: "ON THE SUBJECT OF DRACULA, WHAT IS HIS FAVOURITE FOOD?", answers: ["BLOOD","SHEPHERD'S PIE", "URINE", "CHICKEN CHOW MEIN"], correctAnswer: 1)]
    
    
    
}//End of class
