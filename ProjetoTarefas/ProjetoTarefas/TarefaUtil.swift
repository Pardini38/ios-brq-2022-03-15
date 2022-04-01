//
//  TarefaUtil.swift
//  ProjetoTarefas
//
//  Created by user214453 on 3/28/22.
//

import Foundation

class TarefaUtil{
    
    let chave = "tarefas"
    
    func salvar(novaTarefa: String){
        
        var tarefas = listar()
        
        tarefas.append(novaTarefa)
        
        UserDefaults.standard.setValue(tarefas, forKey: chave)
        
    }
    
    func listar() -> [String]{
        let tarefas = UserDefaults.standard.object(forKey: chave)
        if tarefas == nil{
            return []
        }
        
        print(tarefas)
        
        return(tarefas as! [String])
    }
    
    func remover(index: Int){
        
        var tarefas = listar()
        
        tarefas.remove(at: index)
        
        UserDefaults.standard.setValue(tarefas, forKey: chave)
    }
    
    func editar(index : Int, novaTarefa: String){
        var tarefas = listar()
        tarefas[index] = novaTarefa
        
        UserDefaults.standard.setValue(tarefas, forKey: chave)
    }
    
}
