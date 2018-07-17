//
//  ViewController.swift
//  DogAge
//
//  Created by Taina Viriato on 17/03/2018.
//  Copyright © 2018 tainavm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageResult: UILabel!
    @IBOutlet weak var insertedAge: UITextField!
    
    @IBAction func findAge(_ sender: Any) {
        let age = Int(insertedAge.text!)! * 7
        ageResult.text = "A idade do cachorro é: " + String(age)
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

