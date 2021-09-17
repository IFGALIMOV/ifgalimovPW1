//
//  ViewController.swift
//  ifgalimovPW1
//
//  Created by Alexander Matveev on 17.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var views: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func view1(_ sender: UIButton) {
    }
    

    @IBOutlet weak var view1: UIButton!
    @IBAction func changeColorButtonPressed(_ sender: Any) {
        
        var set = Set<UIColor>()
        while set.count < views.count {
        set.insert(
        UIColor(
        red: .random(in: 0...1),
        green: .random(in: 0...1),
        blue: .random(in: 0...1),
        alpha: 1
        )
        )
        }
         for view in views {
            UIView.animate(withDuration: 5, animations: {
            view.backgroundColor = set.popFirst()
            })
            
            view.layer.cornerRadius = 5
         view.backgroundColor = set.popFirst()
            
         }
        
        
    }
    
}

