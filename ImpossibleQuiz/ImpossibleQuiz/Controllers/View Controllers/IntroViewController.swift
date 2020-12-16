//
//  IntroViewController.swift
//  ImpossibleQuiz
//
//  Created by Nicholas Towery on 12/16/20.
//

import UIKit

class IntroViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

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
}
