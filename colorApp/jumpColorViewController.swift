//
//  jumpColorViewController.swift
//  colorApp
//
//  Created by Aleksandr Myasoedov on 24.06.2020.
//  Copyright © 2020 Александр Мясоедов. All rights reserved.
//

import UIKit
protocol ChoiceColorDelegate {
    func color(_ name: String)
}

class jumpColorViewController: UIViewController {
    @IBOutlet weak var SentenceLabel: UILabel!
    
    var sentence = ""
    var delegate :ChoiceColorDelegate?
    
    
    @IBAction func redButton(_ sender: Any) {
        delegate?.color("Выбран Красный!")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func greenButton(_ sender: Any) {
        delegate?.color("Выбран Зеленый!")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func blueButton(_ sender: Any) {
        delegate?.color("Выбран Синий!")
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SentenceLabel.text = "Выбери цвет!"

    }
    



}
