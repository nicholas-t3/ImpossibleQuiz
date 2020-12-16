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
    var questionIndex = 0
    var mode: Int?
    var crash: String?
    var dataSource: [Question] {
        switch mode {
        case 0:
            return QuestionController.sharedInstance.easyQuestion
        case 1:
            return QuestionController.sharedInstance.mediumQuestion
        case 2:
            return QuestionController.sharedInstance.hardQuestion
        case .none:
            return []
        case .some(_):
            return []
        }
    }
    var lives = 3 {
        didSet {
            livesLabel.text = "Lives: \(lives)"
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
        loadQuestion()
    }
    
    // MARK: - Actions
    
    @IBAction func firstButtonTapped(_ sender: Any) {
        checkAnswer(0)
        
    }
    
    @IBAction func secondButtonTapped(_ sender: Any) {
        checkAnswer(1)
    }
    
    
    @IBAction func thirdButtonTapped(_ sender: Any) {
        checkAnswer(2)
    }
    
    @IBAction func fourthButtonTapped(_ sender: Any) {
        checkAnswer(3)
        
        
    }
    
    
    //MARK: - Methods
    func youLose(){
        QuestionController.sharedInstance.amountOfLosses += 1
        if QuestionController.sharedInstance.amountOfLosses == 5 {
            presentLostAlert()
        } else {
            presentLostAlert()
        }
        
    }
    
    func presentLostAlert(){
        let alertController = UIAlertController(title: "You lost!", message: "Try to be smarter next time.", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { (action) in
            self.performSegue(withIdentifier: "toIntroVC", sender: nil)
        }
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
    //    func presentCrashAlert(){
    //        let alertController = UIAlertController(title: "Uh-oh", message: "You lost so much that the game broke.", preferredStyle: .alert)
    //        let okAction = UIAlertAction(title: "Bye?", style: .default) { (action) in
    //            self.questionLabel.text = self.crash!
    //        }
    //        alertController.addAction(okAction)
    //        present(alertController, animated: true, completion: nil)
    //    }
    
    func loadQuestion(){
        question = dataSource[questionIndex]
        questionLabel.text = question?.question
        questionNumberLabel.text = String("\(question!.questionNumber)")
        setupButtons()
    }
    
    func setupButtons() {
        guard let question = question else {return}
        firstButton.setTitle(question.answers[0], for: .normal)
        secondButton.setTitle(question.answers[1], for: .normal)
        thirdButton.setTitle(question.answers[2], for: .normal)
        fourthButton.setTitle(question.answers[3], for: .normal)
        firstButton.titleLabel?.adjustsFontSizeToFitWidth = true
        firstButton.titleEdgeInsets = UIEdgeInsets(top:0, left:60 , bottom:0 , right:40 )
        secondButton.titleEdgeInsets = UIEdgeInsets(top:0, left:40 , bottom:0 , right:60 )
        thirdButton.titleEdgeInsets = UIEdgeInsets(top:0, left:60 , bottom:0 , right:40 )
        fourthButton.titleEdgeInsets = UIEdgeInsets(top:0, left:40 , bottom:0 , right:60 )
        secondButton.titleLabel?.adjustsFontSizeToFitWidth = true
        thirdButton.titleLabel?.adjustsFontSizeToFitWidth = true
        fourthButton.titleLabel?.adjustsFontSizeToFitWidth = true
        
    }
    
    func checkAnswer(_ int: Int){
        if int == question?.correctAnswer {
            questionIndex += 1
            loadQuestion()
        } else {
            lives -= 1
        }
    }
    
} //End of class
