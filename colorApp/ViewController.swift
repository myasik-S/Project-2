//
//  ViewController.swift
//  colorApp
//
//  Created by Aleksandr Myasoedov on 24.06.2020.
//  Copyright © 2020 Александр Мясоедов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selectedColor: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedColor.text = ""
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let jump = segue.destination as? jumpColorViewController,
            segue.identifier == "transition"{
            jump.sentence = selectedColor.text!
            jump.delegate = self
            
        }
        
    }


}

extension ViewController: ChoiceColorDelegate{
    func color(_ name: String) {
        selectedColor.text = name
    }
}

