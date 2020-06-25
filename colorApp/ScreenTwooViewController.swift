//
//  ScreenTwooViewController.swift
//  colorApp
//
//  Created by Aleksandr Myasoedov on 24.06.2020.
//  Copyright © 2020 Александр Мясоедов. All rights reserved.
//

import UIKit

class ScreenTwooViewController: UIViewController {

    var choiseVC: ScreenTwooContanerViewController?

    @IBAction func purpleButton(_ sender: Any) {
        choiseVC?.view.backgroundColor = #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1)
    }
    @IBAction func yelowButton(_ sender: Any) {
        choiseVC?.view.backgroundColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
    }
    
    @IBAction func orangeButton(_ sender: Any) {
        choiseVC?.view.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dvc = segue.destination as? ScreenTwooContanerViewController,
            segue.identifier == "containerShou"{
            self.choiseVC = dvc
            dvc.delegate = self
        }
    }
    
    

}
extension ScreenTwooViewController: fondColorDelegate{
    func colorit (_ name: UIColor){
        view.backgroundColor = name
    }
    
}
