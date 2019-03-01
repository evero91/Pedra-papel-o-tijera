//
//  JuegoViewController.swift
//  Piedra, papel o tijera
//
//  Created by Everardo Guevara Soto on 2/24/19.
//  Copyright © 2019 evero91. All rights reserved.
//

import UIKit

class JuegoViewController: UIViewController {

    var jugada: Jugada!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func piedra(_ sender: Any) {
        jugada = Jugada(opcion: .piedra)
        performSegue(withIdentifier: "modalResultado", sender: nil)
    }
    
    @IBAction func papel(_ sender: Any) {
        jugada = Jugada(opcion: .papel)
        performSegue(withIdentifier: "modalResultado", sender: nil)
    }
    
    @IBAction func tijeras(_ sender: Any) {
        jugada = Jugada(opcion: .tijeras)
        performSegue(withIdentifier: "modalResultado", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "modalResultado" {
            let jugadaOponente = obtenerJugadaAleatoria()
            let resultadoJuego = obtenerResultado(jugada: jugada.opcion, jugadaOponente: jugadaOponente.opcion)
            
            if let vcResultados = segue.destination as? ResultadoViewController {
                vcResultados.textoResultado = resultadoJuego.textoResultado
                vcResultados.nombreImagenResultado = resultadoJuego.nombreImagen
                vcResultados.nombreImagenJugada = jugada.nombreImagen
                vcResultados.nombreImagenJugadaOponente = jugadaOponente.nombreImagen
            }
        }
    }
    
    private func obtenerJugadaAleatoria() -> Jugada {
        let jugadaAleatoria = Int.random(in: 1...3)
        return Jugada(opcion: Opcion(rawValue: jugadaAleatoria)!)
    }
    
    private func obtenerResultado(jugada: Opcion, jugadaOponente: Opcion) -> (textoResultado: String, nombreImagen: String) {
        switch jugada {
        case .piedra:
            switch jugadaOponente {
            case .piedra:
                return ("Empate!", "empate")
            case .papel:
                return ("Pierdes!", "papel-piedra")
            case .tijeras:
                return ("Ganaste!", "piedra-tijeras")
            }
            
        case .papel:
            switch jugadaOponente {
            case .piedra:
                return ("Ganaste!", "papel-piedra")
            case .papel:
                return ("Empate!", "empate")
            case .tijeras:
                return ("Pierdes!", "tijeras-papel")
            }
            
        case .tijeras:
            switch jugadaOponente {
            case .piedra:
                return ("Pierdes!", "piedra-tijeras")
            case .papel:
                return ("Ganaste!", "tijeras-papel")
            case .tijeras:
                return ("Empate!", "empate")
            }
        }
    }
    
}

