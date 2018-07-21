//
//  ViewController.swift
//  Minhas Anotações
//
//  Created by Taina Viriato on 20/07/2018.
//  Copyright © 2018 tainavm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    let KEY: String = "myNotes"
    
    @IBAction func saveNotes(_ sender: Any) {
        
        if let text = textView.text {
            UserDefaults.standard.set(text, forKey: KEY)
        }
        
    }
    
    func recuperarNotes() -> String {
        
        if let textoRecuperado = UserDefaults.standard.object(forKey: KEY) {
            return textoRecuperado as! String
        }
        
        return ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = recuperarNotes()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

