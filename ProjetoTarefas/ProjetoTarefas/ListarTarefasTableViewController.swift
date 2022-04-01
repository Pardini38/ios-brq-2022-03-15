//
//  ListarTarefasTableViewController.swift
//  ProjetoTarefas
//
//  Created by user214453 on 3/28/22.
//

import UIKit

class ListarTarefasTableViewController: UITableViewController {
    
    var tarefas : [String] = ["Estudar IOS"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // alterar um valor para uma chave em especifico
        //UserDefaults.standard.setValue(tarefas, forKey: "tarefas")

        //let tarefasDefault = UserDefaults.standard.object(forKey: "tarefas")
        //print(tarefasDefault)
        
        tarefas = UserDefaults.standard.object(forKey: "tarefas") as! [String]
        print(tarefas)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tarefas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "celulaReuso", for: indexPath)

        celula.textLabel?.text = tarefas[indexPath.row]

        return celula
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let tu = TarefaUtil()
            tu.remover(index: indexPath.row)
            
            tarefas = tu.listar()
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        }    
    }
    // prepare sempre é executado antes da troca de tela.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "listarParaAddTarefaSegue"{
            //instanciamos o controlador da tela de destino
            let destinoControlador = segue.destination as! AddTarefaViewController
            // setamos o indice do array que devemos alterar no controlador de destino
            if let i = sender as? Int{
            destinoControlador.indexTarefa = i
            }
        }
    }
    // didSelectRowAt é responsável por capturar qual elemento foi selecionado
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        //mandar para a tela de adicionar
        //performSegue é responsável por executar a troca de tela precisamos do identificador da segue e o parametro que vamos passar entre esta troca de tela (sender)
        performSegue(withIdentifier: "listarParaAddTarefaSegue", sender: indexPath.row)
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
