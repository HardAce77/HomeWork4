//
//  ViewController.swift
//  HomeWork4
//
//  Created by Nikita Neluybin on 24.04.2021.
//

import UIKit

class IntroductionViewController: UIViewController {
    
    let questions = Question.getQuestions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func unwind(segue: UIStoryboardSegue) {}

}

