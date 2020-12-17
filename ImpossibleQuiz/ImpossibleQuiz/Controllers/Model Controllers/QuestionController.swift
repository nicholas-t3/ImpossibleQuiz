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
    var amountOfLosses = 0
    
    //Shared Instance
    static let sharedInstance = QuestionController()
    
    // MARK: - Properties
    var easyQuestion = [Question(questionNumber: 1, question: "HOW MANY HOLES IN A POLO", answers: ["ONE","TWO","THREE","FOUR"], correctAnswer: 3),
                        Question(questionNumber: 2, question: "CAN A MATCH BOX", answers: ["YES", "NO", "NO,BUT A TIN CAN","YES, ONE BEAT MIKE TYSON"], correctAnswer: 2),
                        Question(questionNumber: 3, question: "SDRAWKCAB NOITSEUQ SIHT REWSNA", answers: ["K.O", "WHAT?", "I DON'T UNDERSTAND","TENNIS ELBOW"], correctAnswer: 0),
                        Question(questionNumber: 4, question: "WHAT DO YOU CALL A WINGLESS FLY", answers: ["A FLAP", "A WALK", "A PLUM","JASON"], correctAnswer: 3),
                        Question(questionNumber: 5, question: "WHERE IS ORION'S BELT?", answers: ["AROUND ORION'S WAIST", "IN SPACE", "POLAND","ELEVEN"], correctAnswer: 0),
                        Question(questionNumber: 6, question: "WHAT ARE THE MAIN INGREDIENTS OF SHAMPOO?", answers: ["CRICKETS", "SHAMPOO", "ROCKS AND SAUSAGES","CATS AND WHEELS"], correctAnswer: 1),
                        Question(questionNumber: 7, question: "WHICH CHEESE IS MADE BACKWARDS?", answers: ["CHEDDAR", "BRIE", "EDAM","BA BA BA, BABYBEL"], correctAnswer: 2),
                        Question(questionNumber: 8, question: "WHICH IS THE CORRECT SPELLING", answers: ["SLAP-ME-DO", "SLAPP-ME-DO", "SPAPP-ME-DO","SPLAPP-ME-DO"], correctAnswer: 3),
                        Question(questionNumber: 9, question: "SHANGHAI?", answers: ["IS INDEED THE LARGEST CITY IN CHINA", "NAEVER BEEN", "WHY IS THERE A QUESTION MARK?","NO, ABOUT 20CM OFF THE GROUND"], correctAnswer: 3),
                        Question(questionNumber: 10, question: "ON THE SUBJECT OF DRACULA, WHAT IS HIS FAVOURITE FOOD?", answers: ["BLOOD","SHEPHERD'S PIE", "MILKSTEAK", "CHICKEN CHOW MEIN"], correctAnswer: 1)]
    
    var mediumQuestion = [Question(questionNumber: 1, question: "WHAT ARE CHICK MCNUGGETS MADE OF", answers: ["100% CHICKEN","TASTELESS GOO","SOIL","WIN"], correctAnswer: 1),
                          Question(questionNumber: 2, question: "WHAT DOES 'D.N.A' STAND FOR?", answers: ["DEOXYRIBONUCLEIC ACID", "DO NOT ABBREVIATE", "DOORMAT, NICE ABACUS","NATIONAL DYSLEXIC ASSOCIATION"], correctAnswer: 3),
                          Question(questionNumber: 3, question: "WHEN IS A DOOR NOT A DOOR? ", answers: ["WHEN IT'S A PIG", "WHEN IT'S A KNOB", "WHEN IT'S A CHEESECAKE","WHEN IT'S A JAR"], correctAnswer: 3),
                          Question(questionNumber: 4, question: "WHICH MAGICAL PROPERTY DO DOG EGGS CONTAIN?", answers: ["ETERNAL YOUTH", "BLINDNESS", "OODLES OF CASH","INVINCIBILITY"], correctAnswer: 1),
                         
                          Question(questionNumber: 5, question: "DID YOU ENJOY THE LAST QUESTION?", answers: ["NOT AT ALL", "I LOVED IT", "HATE. THIS. QUIZ.","SPACE IS A DISGRACE"], correctAnswer: 2),
                          Question(questionNumber: 6, question: "THE ANSWER IS HORSESHOE", answers: ["HORSESHOES", "A HORSESHOE", "HORSESHOE","A HORSE'S SHOE"], correctAnswer: 2),
                          Question(questionNumber: 7, question: "SNAKE? SNAKE?!", answers: ["SNAKE!", "SNAAAAAAKE!", "SNAKE?","SNAIL!"], correctAnswer: 2),
                          Question(questionNumber: 8, question: "WHAT DO YOU NEED TO BUILD A GREEN HOUSE", answers: ["BRICKS", "PAINT", "GLASS","REDBULL"], correctAnswer: 1),
                          Question(questionNumber: 9, question: "WHICH IS THE LARGEST?", answers: ["EARTH", "MARS", "MILKY WAY","GALAXY"], correctAnswer: 3),
                          Question(questionNumber: 10, question: "HOW MANY LETTERS IN THIS SENTENCE?", answers: ["28","29", "8", "666"], correctAnswer: 2)]
    
    var hardQuestion = [Question(questionNumber: 1, question: "WHICH IS TRUE", answers: ["PSP > DS","DS > PSP","PSP = DS","EGG > 28"], correctAnswer: 3),
                        Question(questionNumber: 2, question: "HOW MANY QUESTIONS DOES THIS QUIZ HAVE", answers: ["100", "200", "NO ONE KNOWS THAT","YOU CAN'T REALLY CLASS THIS AS A QUIZ.."], correctAnswer: 2),

                        Question(questionNumber: 3, question: "WHAT DO YOU GET IF YOU PUT A NUMBER 1 INTO YOUR CALCULATOR AND THEN A NUMBER 2", answers: ["3", "12", "A RIGHT MESS", "ERROR!"], correctAnswer: 3),
                        Question(questionNumber: 4, question: "HOW MANY TIMES HAVE YOU HAD TO RESTART", answers: ["NONE!", "1-5 TIMES", "6-9 TIMES","NONCE"], correctAnswer: 3),
                        Question(questionNumber: 5, question: "REMEMBER: BLUE YELLOW RED BLUE YELLOW BLUE RED", answers: ["OK", "WHY?", "I CAN'T","UGH"], correctAnswer: 0),
                        Question(questionNumber: 6, question: "CAN YOU GET THIS QUESTION WRONG?", answers: ["NO", "NOPE", "NO WAY","OF COURSE NOT"], correctAnswer: 3),
                        Question(questionNumber: 7, question: "CLICK 'YES' TO WIN THE GAME IMMEDIATELY", answers: ["YES", "NO", "CANCEL","EXIT"], correctAnswer: 1),
                        Question(questionNumber: 8, question: "WHAT BREAKS WHEN YOU SAY IT?", answers: ["PINEAPPLES", "SILENCE", "A PETIT DEJEUNER","COD"], correctAnswer: 3),
                        Question(questionNumber: 9, question: "DID YOU REMEMBER?", answers: ["BLUE YELLOW RED BLUE YELLOW RED BLUE", "NO", "BLUE YELLOW RED BLUE YELLOW BLUE RED","BLUE YELLOW RED YELLOW BLUE YELLOW RED BLUE"], correctAnswer: 2),
                        Question(questionNumber: 10, question: "HOW MANY HOLES IN TWO POLOS?", answers: ["ONE","TWO", "THREE", "FOUR"], correctAnswer: 1)]
    
}//End of class
