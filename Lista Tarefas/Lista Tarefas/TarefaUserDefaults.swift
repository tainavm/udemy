//
//  TarefaUserDefaults.swift
//  Lista Tarefas
//
//  Created by Taina Viriato on 21/07/2018.
//  Copyright © 2018 tainavm. All rights reserved.
//

import UIKit

class TarefaUserDefaults {
    
    let KEY = "tarefas_key"
    var tarefas: [String] = []
    
    func remover(index: Int) {
        
         tarefas = listarTarefas()
         tarefas.remove(at: index)
        
        UserDefaults.standard.set(tarefas, forKey: KEY)
        
    }
    
    func salvarTarefa(tarefa: String) {
        
        tarefas = listarTarefas()
        
        tarefas.append(tarefa)
        UserDefaults.standard.set(tarefas, forKey: KEY)
        
    }
    
    func listarTarefas() -> Array<String> {
        
        let dados = UserDefaults.standard.object(forKey: KEY)
        
        if dados != nil {
            return dados as! Array<String>
        } else {
            return []
        }
        
    }
    
}
