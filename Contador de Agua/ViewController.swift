//
//  ViewController.swift
//  Contador de Agua
//
//  Created by Elisa Kalil on 22/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Variáveis
    var contadorCoposDagua: Int = 0
    let meta = "Meta: "

    //MARK: IBOutlet
    @IBOutlet weak var imageBackground: UIImageView!
    @IBOutlet weak var labelQuantidadeDeCopos: UILabel!
    @IBOutlet weak var labelQuantidade: UILabel!
    @IBOutlet weak var buttonIncrementar: UIButton!
    @IBOutlet weak var buttonDiminuir: UIButton!
    @IBOutlet weak var entradaDeTextoDoUsuario:UITextField!
    @IBOutlet weak var labelMeta: UILabel!
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        atualizaContador()
        voceAtingiuMeta()
        buttonDiminuir.layer.cornerRadius = 12
        buttonIncrementar.layer.cornerRadius = 12
        entradaDeTextoDoUsuario.addTarget(self, action: #selector(atualizaMeta), for: .editingChanged)

    }
    
    //MARK: Métodos
    func voceAtingiuMeta() {
        if String(contadorCoposDagua) == entradaDeTextoDoUsuario.text {
            labelMeta.text = "Você atingiu sua meta!"
            labelMeta.textColor = UIColor(red: 156.0/255.0, green: 181.0/255.0, blue: 148.0/255.0, alpha: 1)

        } else {
        }}
    
    func atualizaContador() {
        labelQuantidade.text = String(contadorCoposDagua)
    }
    
    @objc func atualizaMeta() {
        guard let entradaDeTextoDoUsuarioOK = entradaDeTextoDoUsuario.text else { return }
        labelMeta.text = meta + entradaDeTextoDoUsuarioOK
    }
    
    
    //MARK: IBAction
        
    @IBAction func buttonIncrementar(_ sender: UIButton) {
        
            contadorCoposDagua += 1
            atualizaContador()
        }
    
    @IBAction func buttonDiminuir(_ sender: UIButton) {
        
        if contadorCoposDagua > 0 {
             
           contadorCoposDagua -= 1
           atualizaContador()
        
    }
    
}
}

