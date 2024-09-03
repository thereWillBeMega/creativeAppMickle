//
//  ViewController.swift
//  creativeApp
//
//  Created by PETER MICKLE on 9/3/24.
//

import UIKit

class ViewController: UIViewController {
    

    var grassScore: Int = 0
    
    @IBOutlet weak var gameOutlet: UITextField!
    
    @IBOutlet weak var hoursOutlet: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    

    @IBAction func calculateAction(_ sender: UIButton) {
        
        grassScore = hoursOutlet.text
        
    }
    
}

