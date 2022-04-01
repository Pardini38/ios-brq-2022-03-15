//
//  SegundaTelaViewController.swift
//  ExercicioFilme
//
//  Created by user214453 on 3/28/22.
//

import UIKit

class SegundaTelaViewController: UITableViewController{
    
    let filmes = ["Meu Malvado Favorito","Os Croods","Tropa de Elite","Em Ritmo de Fuga","Policial em Apuros"]
    let descfilmes = ["Um homem que adora todas as coisas diabólicas, o supervilão Gru traça um plano para roubar a lua. Rodeado de um exército de pequenos ajudantes e seu arsenal de armas e máquinas de guerra, Gru se prepara para destruir quem atravessar seu caminho. Mas ele não esperava pelo seu maior desafio: três adoráveis órfãs que querem ter Gru como pai.","Família da pré-história vê sua caverna ser destruída. Depois disso, os Croods partem em uma aventura em busca de um novo lugar para morar, liderados por um garoto muito imaginativo que lhes ajuda a desbravar um mundo inteiramente novo.","Nascimento, capitão da Tropa de Elite do Rio de Janeiro, é designado para chefiar uma das equipes que tem como missão apaziguar o Morro do Turano. Ele precisa cumprir as ordens enquanto procura por um substituto para ficar em seu lugar. Em meio a um tiroteio, Nascimento e sua equipe resgatam Neto e Matias, dois aspirantes a oficiais da PM. Ansiosos para entrar em ação e impressionados com a eficiência de seus salvadores, os dois se candidatam ao curso de formação da Tropa de Elite.","O talentoso motorista de fuga Baby confia nas batidas de sua própria trilha sonora para ser o melhor que existe. A música silencia um zumbido que o perturba desde um acidente na infância. Após conhecer a mulher dos seus sonhos, ele reconhece uma oportunidade de se livrar do estilo de vida questionável e recomeçar do zero. Obrigado a trabalhar para um chefão do crime, Baby lida com a música ao mesmo tempo em que um golpe fadado ao fracasso ameaça sua vida, seu amor e sua liberdade.","Ben namora a bela Angela e tem vontade de se casar com ela, mas antes tem que enfrentar o irmão dela, o policial durão James, que propõe um desafio: os dois farão uma patrulha policial durante 24 horas. Somente após passar por esse teste, Ben poderá se casar com Angela."]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "celulaReuso", for: indexPath)
        celula.textLabel?.text = filmes[indexPath.row]

        
        return celula
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(descfilmes[indexPath.row])
        
        let alerta = UIAlertController(title: filmes[indexPath.row], message: descfilmes[indexPath.row], preferredStyle: .alert)
        let confirmar = UIAlertAction(title: "Confirmar", style: .default, handler: nil)


        alerta.addAction(confirmar)
        present(alerta, animated: true, completion: nil)
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
