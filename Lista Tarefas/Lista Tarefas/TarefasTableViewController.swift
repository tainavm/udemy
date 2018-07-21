//
//  TarefasTableViewController.swift
//  Lista Tarefas
//
//  Created by Taina Viriato on 21/07/2018.
//  Copyright © 2018 tainavm. All rights reserved.
//

import UIKit

class TarefasTableViewController: UITableViewController {
    
    var tarefas: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        atualizarListaTarefa()
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func atualizarListaTarefa() {
        
        let tarefa = TarefaUserDefaults()
        tarefas = tarefa.listarTarefas()
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tarefas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tarefasCell", for: indexPath)

        cell.textLabel?.text = tarefas[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete {
            let tarefa = TarefaUserDefaults()
            tarefa.remover(index: indexPath.row)
            atualizarListaTarefa()
            
        }
    }
    

}
