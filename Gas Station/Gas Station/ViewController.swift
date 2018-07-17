//
//  ViewController.swift
//  Gas Station
//
//  Created by Taina Viriato on 27/06/2018.
//  Copyright © 2018 tainavm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceEtanol: UITextField!
    @IBOutlet weak var priceGasolina: UITextField!
    @IBOutlet weak var resultado: UILabel!

    @IBAction func calcular(_ sender: Any) {
        
        if let valorEtanol = priceEtanol.text {
            if let valorGasolina = priceGasolina.text {
                
               let validadoCampos = self.validarCampos(priceEtanol: valorEtanol, priceGasolina: valorGasolina)
                
                if validadoCampos {
                    self.calcularMelhorCombustivel(priceEtanol: valorEtanol, priceGasolina: valorGasolina)
                } else {
                    resultado.text = "Digite os preços para calcular"
                }
                
            }
        }
        
    }
    
    // Calcula o percentual do alcool e gasolina
    func calcularMelhorCombustivel(priceEtanol: String, priceGasolina: String) {
        
        if let etanol = Double(priceEtanol) {
            if  let gasolina = Double(priceGasolina) {
                
                let resultadoCalculo = etanol / gasolina
                if resultadoCalculo >= 0.7 {
                    self.resultado.text = "Melhorar utilizar Gasolina"
                } else {
                    self.resultado.text = "Melhorar utilizar Álcool"
                }
            }
        }
       
    }
    
    // Valida campos em branco
    func validarCampos(priceEtanol: String, priceGasolina: String) -> Bool {
        
        var camposValidados = true
        
        if priceEtanol.isEmpty {
            camposValidados = false
        } else if priceGasolina.isEmpty {
            camposValidados = false
        }
        
        return camposValidados
        
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

