//
//  SegundaTelaViewController.swift
//  MeuTerceiroProjeto
//
//  Created by user214453 on 3/21/22.
//
import UIKit


class SegundaTelaViewController : UIViewController {
    @IBOutlet weak var usuarioLabel: UILabel!
    @IBOutlet weak var senhaLabel: UILabel!
    
    var usuarioValue : String = ""
    var senhaValue : String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print(usuarioValue)
        print(senhaValue)
        
        usuarioLabel.text = "\(usuarioLabel.text!)): \(usuarioValue)"
        
        senhaLabel.text = "\(senhaLabel.text!): \(senhaValue)"
    }
}
