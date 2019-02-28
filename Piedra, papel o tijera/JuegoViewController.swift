//
//  JuegoViewController.swift
//  Piedra, papel o tijera
//
//  Created by Everardo Guevara Soto on 2/24/19.
//  Copyright © 2019 evero91. All rights reserved.
//

import UIKit

class JuegoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func piedra(_ sender: Any) {
        performSegue(withIdentifier: "modalResultado", sender: nil)
    }
    
    @IBAction func papel(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "modalResultado" {
            let vcResultados = ResultadoViewController()
            
        }
    }
    
}

