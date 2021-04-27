//
//  ResultsViewController.swift
//  HomeWork4
//
//  Created by Nikita Neluybin on 25.04.2021.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet var animalTypeLabel: UILabel!
    @IBOutlet var animalDefinitionLabel: UILabel!
    
    var answers: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        navigationItem.hidesBackButton = true
    }
    

    

}
extension ResultsViewController {
    
    func updateUI() {
        var freqAnimals: [AnimalType: Int] = [.cat : 0, .dog : 0, .rabbit : 0, .turtle : 0]
        var cat = 0
        var dog = 0
        var rabbit = 0
        var turtle = 0

        answers.forEach { animal in
            switch animal.type {
            case .dog:
                dog += 1
                freqAnimals.updateValue(dog, forKey: .dog)
            case .cat:
                cat += 1
                freqAnimals.updateValue(cat, forKey: .cat)
            case .rabbit:
                rabbit += 1
                freqAnimals.updateValue(rabbit, forKey: .rabbit)
            case .turtle:
                turtle += 1
                freqAnimals.updateValue(turtle, forKey: .turtle)
            }
        }
        let sortedFreq = freqAnimals.sorted{$0.value > $1.value}
        guard let resultAnimal = sortedFreq.first?.key else { return }
        animalTypeLabel.text = "Вы - \(resultAnimal.rawValue)"
        animalDefinitionLabel.text = resultAnimal.definition
    }
}
