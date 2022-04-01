//
//  TarefaCoreDataUtil.swift
//  ProjetoTarefas
//
//  Created by user214453 on 3/30/22.
//

import Foundation
import UIKit
import CoreData


class TarefaCoreDataUtil{
    
    func getContext() -> NSManagedObjectContext{
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        return context
    }
    
    func listar() -> [TarefaModel]{
        
        var listaTarefa : [TarefaModel] = []
        let context = getContext()

        
        let requisicao = NSFetchRequest<NSFetchRequestResult>(entityName: "Tarefa")
        
        do{
            let tarefasConsulta =  try context.fetch(requisicao)
            
            for t in tarefasConsulta as! [NSManagedObject]{

                let tm = TarefaModel()
                tm.descricao = t.value(forKey: "descricao") as! String
                tm.autor = t.value(forKey: "descricao") as! String
                tm.jaRealizado = t.value(forKey: "ja_realizado") as! Int
                listaTarefa.append(tm)
            }
        }catch{
            print("Erro ao consultar as Tarefas")
        }
        
        return listaTarefa
    }
    
    func salvar(descricao : String){
        let context = getContext()
        
        let tarefa = NSEntityDescription.insertNewObject(forEntityName: "Tarefa", into: context)
        
        tarefa.setValue(descricao, forKey: "descricao")
        tarefa.setValue("Fabrizio", forKey: "autor")
        tarefa.setValue(1, forKey: "ja_realizado")
        do{
            try context.save()
        }catch{
            print("Erro ao salvar a tarefa")
        }
    }
    
    func remover(index : Int){
        var tarefas = listar()
        
        
        tarefas.remove(at: index)
        
        UserDefaults.standard.setValue(tarefas, forKey: )
    }
    
    func editar(){
        
    }
}
