//
//  ResultadoViewController.swift
//  Piedra, papel o tijera
//
//  Created by Everardo Guevara Soto on 2/24/19.
//  Copyright © 2019 evero91. All rights reserved.
//

import UIKit

class ResultadoViewController: UIViewController {

    @IBOutlet weak var imgResultado: UIImageView!
    @IBOutlet weak var lblResultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func jugarDeNuevo(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
