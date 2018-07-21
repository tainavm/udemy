//
//  AdicionarTarefasViewController.swift
//  Lista Tarefas
//
//  Created by Taina Viriato on 21/07/2018.
//  Copyright © 2018 tainavm. All rights reserved.
//

import UIKit

class AdicionarTarefasViewController: UIViewController {

    @IBOutlet weak var tarefaTextField: UITextField!
    
    @IBAction func addTarefa(_ sender: Any) {
        
        if let tarefa =  tarefaTextField.text {
            
            let tarefas = TarefaUserDefaults()
            tarefas.salvarTarefa(tarefa: tarefa)
            tarefaTextField.text = ""
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
