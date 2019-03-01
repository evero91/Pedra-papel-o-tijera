//
//  Jugada.swift
//  Piedra, papel o tijera
//
//  Created by Sistemas on 3/1/19.
//  Copyright © 2019 evero91. All rights reserved.
//

enum Opcion: Int {
    case piedra = 1
    case papel = 2
    case tijeras = 3
}

struct Jugada {
    let opcion: Opcion
    let nombreImagen: String
    
    init(opcion: Opcion) {
        switch opcion {
        case .piedra:
            self.opcion = .piedra
            self.nombreImagen = "rock"
        case .papel:
            self.opcion = .papel
            self.nombreImagen = "paper"
        case .tijeras:
            self.opcion = .tijeras
            self.nombreImagen = "scissors"
        }
    }
}
