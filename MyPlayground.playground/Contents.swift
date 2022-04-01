import UIKit

class Celular {
    
    var cor : String?
    var fabricante : String?
    var tamanhoTela : Double?
    var camera : Int?
}

var iphone = Celular()
iphone.cor = "Vermelho"
iphone.fabricante = "Apple"
iphone.tamanhoTela = 6.1
iphone.camera = 2

print("Seu Iphone é \(iphone.cor!), é fabricado pela \(iphone.fabricante!), tem uma tela de \(iphone.tamanhoTela!) polegadas, e conta com \(iphone.camera!) câmeras.\n")


var xiaomi = Celular()
xiaomi.cor = "Preto"
xiaomi.fabricante = "Xiaomi"
xiaomi.tamanhoTela = 6.7
xiaomi.camera = 3

print("Seu Xiaomi é \(xiaomi.cor!), é fabricado pela \(xiaomi.fabricante!), tem uma tela de \(xiaomi.tamanhoTela!) polegadas, e conta com \(xiaomi.camera!) câmeras.")

class Pessoa{
    var nome : String?
    var salario : Double?
    var cpf : String?
}
class Gerente{

}
class Diretor{
    var bonus: Double?
}

