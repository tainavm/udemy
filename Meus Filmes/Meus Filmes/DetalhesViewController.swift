//
//  DetalhesViewController.swift
//  Meus Filmes
//
//  Created by Taina Viriato on 20/07/2018.
//  Copyright © 2018 tainavm. All rights reserved.
//

import UIKit
import Foundation

class DetalhesViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var titulo: UILabel!
    
    var filme: Filme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titulo.text = filme.titulo
        image.image = filme.imagem

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
