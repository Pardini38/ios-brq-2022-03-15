//
//  TarefaCoreDataViewController.swift
//  ProjetoTarefas
//
//  Created by user214453 on 3/30/22.
//

import Foundation
import UIKit
import CoreData

class TarefaCoreDataViewController : UITableViewController{

    var listaTarefa : [TarefaModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tcu = TarefaCoreDataUtil()
        listaTarefa = tcu.listar()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaTarefa.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "celulaReuso1", for: indexPath)

        celula.textLabel?.text = listaTarefa[indexPath.row].descricao

        return celula
    }
    
}
