//
//  IntroViewController.swift
//  ImpossibleQuiz
//
//  Created by Nicholas Towery on 12/16/20.
//

import UIKit

class IntroViewController: UIViewController {

    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "easySegue"{
                 guard let destinationVC = segue.destination as? QuestionViewController else {return}
                destinationVC.mode = 0
        }
        if segue.identifier == "mediumSegue"{
                 guard let destinationVC = segue.destination as? QuestionViewController else {return}
                destinationVC.mode = 1
        }
        if segue.identifier == "hardSegue"{
                 guard let destinationVC = segue.destination as? QuestionViewController else {return}
                destinationVC.mode = 2
        }
    }
    
} // End of class
