//
//  ViewController.swift
//  Frases do Dia
//
//  Created by Taina Viriato on 22/06/2018.
//  Copyright © 2018 tainavm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelFrases: UILabel!
    
    @IBAction func novaFrase(_ sender: Any) {
        
        var frases: [String] = []
        frases.append("Melhor música da Copa é WAKA WAKA e eu posso provar")
        frases.append("SHAMINA EEEE WAKA WAKA EEE SHAMINA SA MINA THIS TIME FOR AFRICA")
        frases.append("Bruna Marquezini diz: Não toquem no mozão")
        frases.append("Wavin flag é boa, mas waka waka é melhor")
        frases.append("NEEEEEEEY, Now i can see uhuuu you can do eu esqueci")
        
        let numeroAleatorio = arc4random_uniform(5)
        labelFrases.text = frases[Int(numeroAleatorio)]
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

