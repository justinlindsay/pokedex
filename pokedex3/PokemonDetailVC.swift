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
    
    
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var pokedexLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var baseLbl: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    @IBOutlet weak var evoLbl: UILabel!
    
    
    
    
    @IBOutlet weak var nameLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLbl.text = pokemon.name
        
        let img = UIImage(named: "\(pokemon.pokedexId)")
        mainImg.image = img
        currentEvoImg.image = img
        pokedexLbl.text = "\(pokemon.pokedexId)"
        
        pokemon.downloadPokemonDetail {
            
            //Code here will only be called after network call is complete
            self.updateUI()
        }
    }

    func updateUI() {
        
        baseLbl.text = pokemon.attack
        defenseLbl.text = pokemon.defense
        heightLbl.text = pokemon.height
        weightLbl.text = pokemon.weight
        typeLbl.text = pokemon.type
        descriptionLbl.text = pokemon.description
        
        if pokemon.nextEvolutionId == "" {
            
            evoLbl.text = "No Evolutions"
            nextEvoImg.isHidden = true
            
        } else {
            
            nextEvoImg.isHidden = false
            nextEvoImg.image = UIImage(named: pokemon.nextEvolutionId)
            let str = "Next Evolution: \(pokemon.nextEvolutionName) - LVL \(pokemon.nextEvolutionLevel)"
            evoLbl.text = str
            
            
        }
        
    }
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }

}
