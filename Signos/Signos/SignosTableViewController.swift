//
//  SignosTableViewController.swift
//  Signos
//
//  Created by Taina Viriato on 20/07/2018.
//  Copyright © 2018 tainavm. All rights reserved.
//

import UIKit

class SignosTableViewController: UITableViewController {
    
    var signos: [String] = []
    var caracteristicas: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        signos.append("Áries")
        signos.append("Aquário")
        signos.append("Peixes")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricórnio")
        
        caracteristicas.append("1")
        caracteristicas.append("2")
        caracteristicas.append("3")
        caracteristicas.append("4")
        caracteristicas.append("5")
        caracteristicas.append("6")
        caracteristicas.append("7")
        caracteristicas.append("8")
        caracteristicas.append("9")
        caracteristicas.append("10")
        caracteristicas.append("11")
        caracteristicas.append("12")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "signosCell", for: indexPath)

        cell.textLabel?.text = signos [indexPath.row]

        return cell
    }
 

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alerta = UIAlertController(title: "Caracteristicas", message: caracteristicas[indexPath.row], preferredStyle: .alert)
        
        let confirmar = UIAlertAction(title: "OK", style: .default, handler:  nil)
        
        alerta.addAction(confirmar)
        
        present(alerta, animated: true, completion: nil)
    }
}
