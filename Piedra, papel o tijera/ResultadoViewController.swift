//
//  ResultadoViewController.swift
//  Piedra, papel o tijera
//
//  Created by Everardo Guevara Soto on 2/24/19.
//  Copyright © 2019 evero91. All rights reserved.
//

import UIKit

class ResultadoViewController: UIViewController {

    @IBOutlet weak var imgJugada: UIImageView!
    @IBOutlet weak var imgJugadaOponente: UIImageView!
    @IBOutlet weak var imgResultado: UIImageView!
    @IBOutlet weak var lblResultado: UILabel!
    
    var textoResultado: String!
    var nombreImagenJugada: String!
    var nombreImagenJugadaOponente: String!
    var nombreImagenResultado: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblResultado.text = textoResultado
        
        establecerImagen(imageView: imgJugada, nombreImagen: nombreImagenJugada)
        establecerImagen(imageView: imgJugadaOponente, nombreImagen: nombreImagenJugadaOponente)
        establecerImagen(imageView: imgResultado, nombreImagen: nombreImagenResultado)
    }
    
    @IBAction func jugarDeNuevo(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    private func establecerImagen(imageView: UIImageView, nombreImagen: String) {
        if let imagen = UIImage(named: nombreImagen) {
            imageView.image = imagen
        }
    }

}
