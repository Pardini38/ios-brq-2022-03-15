//
//  DetalhesFilmeCRUDE.swift
//  ExercicioFilme
//
//  Created by user214453 on 4/3/22.
//

import Foundation

class DetalhesFilmeCRUDE{
    
    let chave = "filmes"
    
    func salvar(novoFilme: String){
        
        var filmes = listar()
        
        filmes.append(novoFilme)
        
        UserDefaults.standard.setValue(filmes, forKey: chave)
        
    }
    
    func listar() -> [String]{
        let filmes = UserDefaults.standard.object(forKey: chave)
        if filmes == nil{
            return []
        }
        
        print(filmes)
        
        return(filmes as! [String])
    }
    
    func remover(index: Int){
        
        var filmes = listar()
        
        filmes.remove(at: index)
        
        UserDefaults.standard.setValue(filmes, forKey: chave)
    }
    
    func editar(index : Int, novoFilme: String){
        var filmes = listar()
        filmes[index] = novoFilme
        
        UserDefaults.standard.setValue(filmes, forKey: chave)
    }
    
}

