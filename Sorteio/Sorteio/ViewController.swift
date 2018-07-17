//
//  ViewController.swift
//  Sorteio
//
//  Created by Taina Viriato on 23/04/2018.
//  Copyright © 2018 tainavm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numeroSorteado: UILabel!
    
    @IBAction func gerarNumero(_ sender: Any) {
        var numero = arc4random_uniform(20)
        numeroSorteado.text = String(numero)
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
