//
//  QuestionViewController.swift
//  ImpossibleQuiz
//
//  Created by Nicholas Towery on 12/16/20.
//

import UIKit

class QuestionViewController: UIViewController {
    
    // MARK: - Properties
    var question: Question?
    var index = 0
    
    var lives = 3 {
        didSet {
            if lives == 0{
                youLose()
            }
        }
    }

    
    // MARK: - Outlets
    @IBOutlet weak var livesLabel: UILabel!
    @IBOutlet weak var questionNumberLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var fourthButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    // MARK: - Actions
    
    @IBAction func firstButtonTapped(_ sender: Any) {
        checkAnswer()
    }
    
    @IBAction func secondButtonTapped(_ sender: Any) {
        checkAnswer()
    }
    
    
    @IBAction func thirdButtonTapped(_ sender: Any) {
        checkAnswer()
    }
    
    @IBAction func fourthButtonTapped(_ sender: Any) {
        checkAnswer()
    }
    
    
    //MARK: - Methods
    func youLose(){
        
    }
    
    func loadQuestion(){
        guard let question = question else {return}
        questionLabel.text = question.question
        questionNumberLabel.text = String("\(question.questionNumber)")
        
    }
    
    func checkAnswer(){
        if lives == 1 {
            index += 1
            //question = datasource.questions[index]
        } else {
            lives -= 1
        }
    }
    
    

}
