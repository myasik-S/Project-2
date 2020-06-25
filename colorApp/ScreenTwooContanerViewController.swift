//
//  ScreenTwooContanerViewController.swift
//  colorApp
//
//  Created by Aleksandr Myasoedov on 24.06.2020.
//  Copyright © 2020 Александр Мясоедов. All rights reserved.
//

import UIKit

protocol fondColorDelegate {
    func colorit (_ name: UIColor)
}

class ScreenTwooContanerViewController: UIViewController {

    var delegate: fondColorDelegate?
    
    @IBAction func orangeConButton(_ sender: Any) {
        delegate?.colorit(#colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1))
    }
    
    @IBAction func yelowConButton(_ sender: Any) {
        delegate?.colorit(#colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1))
    }
    
    
    @IBAction func purpleConButton(_ sender: Any) {
        delegate?.colorit(#colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1))
    }
    
    
}
