//
//  AddTarefaCoreDataViewController.swift
//  ProjetoTarefas
//
//  Created by user214453 on 3/31/22.
//

import UIKit

class AddTarefaCoreDataViewController: UIViewController {
    

    @IBOutlet weak var textView: UITextField!
    @IBAction func ButtonAdd(_ sender: Any) {
        let tcu = TarefaCoreDataUtil()
        tcu.salvar(descricao: textView.text!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
