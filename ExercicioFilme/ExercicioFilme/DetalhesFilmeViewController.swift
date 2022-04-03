//
//  DetalhesFilmeViewController.swift
//  ExercicioFilme
//
//  Created by user214453 on 4/3/22.
//

import Foundation
import UIKit

class DetalherFilmeViewController : UIViewController{
       let filmes = DetalhesFilmeCRUDE()
    
    @IBOutlet weak var labelDesc: UILabel!
    @IBOutlet var labelTitulo: UIView!
    override func viewDidLoad() {
        print(filmes.listar())
        super.viewDidLoad()
        
    }
}

