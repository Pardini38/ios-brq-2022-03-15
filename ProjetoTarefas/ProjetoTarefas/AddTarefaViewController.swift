//
//  AddTarefaViewController.swift
//  ProjetoTarefas
//
//  Created by user214453 on 3/28/22.
//

import UIKit

class AddTarefaViewController: UIViewController {
    
    var indexTarefa : Int = -1
    var textoTarefa : String = ""
    
    @IBOutlet weak var buttonAdd: UIButton!
    @IBOutlet weak var addLabel: UITextField!
    @IBAction func addTarefaAction(_ sender: Any) {
      /*
        //pegar o valor salvo na memoria
        var tarefas : [String] = UserDefaults.standard.object(forKey: "tarefas") as! [String]
        
        //pegar tarefa digitada pelo usuario
        let tar = addLabel.text!
        
        //adicionar textfield no final da array
        tarefas.append(tar)
        
        //Salvar array nova na memoria
        //UserDefaults.standard.setValue(tarefas, forKey: "tarefas")
        //print(tarefas)
        let tu = TarefaUtil()
        tarefas = tu.listar()
       */
        
        //let tar = addLabel.text!
        
        let tu = TarefaUtil()
        if isEdicao() == true{
            tu.editar(index: indexTarefa, novaTarefa: addLabel.text!)
        }
        else {
            tu.salvar(novaTarefa: addLabel.text!)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        addLabel.text = textoTarefa
        
        if isEdicao() == true {
            buttonAdd.setTitle("Editar Tarefa", for: .normal
            )
            
            let tu = TarefaUtil()
            //lista completa de tarefas
            let lista = tu.listar()
            // altero a edição de tarefas com o elemento que desejo alterar (indexTarefa)
            addLabel.text = lista[indexTarefa]
        }
    }
    func isEdicao() -> Bool{
        if indexTarefa >= 0{
            return true
        }
        return false
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
