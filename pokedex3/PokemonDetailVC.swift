//
//  PokemonDetailVC.swift
//  pokedex3
//
//  Created by Justin Lindsay on 7/16/17.
//  Copyright © 2017 Justin Lindsay. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    var pokemon: Pokemon!
    
    @IBOutlet weak var nameLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLbl.text = pokemon.name
        
    }


}
