//
//  ViewController.swift
//  creativeApp
//
//  Created by PETER MICKLE on 9/3/24.
//

import UIKit

class ViewController: UIViewController {
    

    var grassScore: Double = 0
    
    @IBOutlet weak var gameOutlet: UITextField!
    
    @IBOutlet weak var hoursOutlet: UITextField!
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    

    @IBAction func calculateAction(_ sender: UIButton) {
    
        //fixed by my good friend chatGPT
        if let text = hoursOutlet.text, !text.isEmpty, let hours = Double(text) {
            
            if let game = gameOutlet.text{
                
                if hours < 0{
                    imageOutlet.image = UIImage(named: "Invalad")
                    return
                }
                
                if game == "LoL" || game == "League of Legends"{
                    grassScore = hours * 4
                }else if game == "Terraria"{
                    grassScore = hours * 1.5
                }else if game == "ADOFAI" || game == "A Dance of Fire and Ice"{
                    grassScore = hours * 1.1
                }else if game == "Mario" || game == "Pokemon" || game == "Fortnite" || game == "Roblox"{
                    grassScore = hours
                }else if game == "Omori"{
                    grassScore = hours * 0.9
                }else if game == "Minecraft"{
                    grassScore = hours * 0.25
                }else{
                    print("invalad1")
                    imageOutlet.image = UIImage(named: "Invalad")
                    return
                }
            }else{
                print("invalad2")
                imageOutlet.image = UIImage(named: "Invalad")
                return
            }
        } else {
print("invalad3")
            imageOutlet.image = UIImage(named: "Invalad")
            return
        }
        
        if grassScore < 250{
           print("yes")
            imageOutlet.image = UIImage(named: "YesGrass")
        }else{
            print("no")
            imageOutlet.image = UIImage(named: "NoGrass")
        }

    }
    
    
    @IBAction func ResetAction(_ sender: UIButton) {
        imageOutlet.image = UIImage(named: "Grass")
        gameOutlet.text = ""
        hoursOutlet.text = ""
    }
    
}

