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
    var score: Int = 0
    var mode: Int?
    var totalScore = 0
    var randomNumber = Int.random(in: 10..<20)
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
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var fourthButton: UIButton!
    
    // MARK: - Lifecycle Methods
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
            presentCrashAlert()
        } else {
            presentLostAlert()
        }
    }
    
    func presentLostAlert(){
        totalScore = score - randomNumber
        let alertController = UIAlertController(title: "You lost!", message: "Your score was \(score), but we took off \(randomNumber) points because we think you can do better. Looks like your score was \(totalScore)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { (action) in
            self.performSegue(withIdentifier: "toIntroVC", sender: nil)
        }
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
    func presentCrashAlert(){
        let alertController = UIAlertController(title: "Uh-oh", message: "Do you give up?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "No! Again!", style: .default) { (action) in
            self.performSegue(withIdentifier: "toIntroVC", sender: nil)
        }
        let giveUpAction = UIAlertAction(title: "I give up.", style: .default) { (action) in
            self.questionLabel.text = self.crash! //Lol, thanks for playing! ->
        }
        alertController.addAction(okAction)
        alertController.addAction(giveUpAction)
        present(alertController, animated: true, completion: nil)
    }
    
    func loadQuestion(){
        
        if questionIndex < dataSource.count {
            question = dataSource[questionIndex]
            questionLabel.text = question?.question
            questionNumberLabel.text = String("\(question!.questionNumber)")
            setupButtons()
        } else {
            let alertController = UIAlertController(title: "You won!", message: "Great job. Your score was \(score) , but you can do better. Try another level", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default) { (action) in
                self.performSegue(withIdentifier: "toIntroVC", sender: nil)
            }
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
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
            let newRandomNumber = Int.random(in: 2..<20)
            questionIndex += 1
            score += (5 * newRandomNumber)
            scoreLabel.text = "Score: \(score)"
            loadQuestion()
        } else {
            lives -= 1
        }
    }
    
} //End of class
