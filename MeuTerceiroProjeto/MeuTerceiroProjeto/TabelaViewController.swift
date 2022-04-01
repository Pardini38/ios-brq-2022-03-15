//
//  TabelaViewController.swift
//  MeuTerceiroProjeto
//
//  Created by user214453 on 3/22/22.
//

import UIKit

class TabelaViewController: UITableViewController{
    
    let pizzas : [String] = ["Mussarela", "Calabresa", "Portuguesa"]
    let descpizzas : [String] = ["Mussarela com molho de tomate e azeitona", "Calabresa e rodelas de cebola", "Mussarela, ovo, presunto, azeitona e rodelas de cebola"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pizzas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "celulaReuso", for: indexPath)
        celula.textLabel?.text = pizzas[indexPath.row]

        
        return celula
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(descpizzas[indexPath.row])
        
        let alerta = UIAlertController(title: pizzas[indexPath.row], message: descpizzas[indexPath.row], preferredStyle: .alert)
        let confirmar = UIAlertAction(title: "Confirmar", style: .default, handler: nil)
        let cancelar = UIAlertAction(title: "Cancelar", style: .destructive, handler: nil)
        
        alerta.addAction(cancelar)
        alerta.addAction(confirmar)
        present(alerta, animated: true, completion: nil)
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
