//
//  ViewController.swift
//  MeuTerceiroProjeto
//
//  Created by user214453 on 3/16/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Senha: UITextField!
    @IBOutlet weak var Usuário: UITextField!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var buttonLabel: UILabel!
    @IBAction func ButtonAction(_ sender: Any) {
        print("botao clicado")
        buttonLabel.text = "Cadastro Realizado!"
        print(textField.text)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(segue.identifier)
        
        if segue.identifier == "loginParaSegundaTelaSegue" {
            let segundaTela = segue.destination as! SegundaTelaViewController
        
            segundaTela.usuarioValue = Usuário.text!
            segundaTela.senhaValue = Senha.text!
        }
    }


}
