//
//  ViewController.swift
//  Single App
//
//  Created by MKTV on 03/02/17.
//  Copyright © 2017 Rubén Sánchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //Objeto encargado de RECIBIR los valores del usuario (input fiel)
    @IBOutlet weak var nameTextField: UITextField!
    //Objeto encargado de MOSTRAR los valores del usuario (label text)
    @IBOutlet weak var nameLabel: UILabel!
    
    //Asignación de tarea "Delegate" cuando el usuario presiona la tecla "Enter" en su teclado
    //textFieldShouldReturn es el metodo cuando se preciona "Enter"
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //Metodo que asignará a nuestro Label la variable del usuario
        nameLabel.text = "Hola, \(nameTextField.text!)🐰🐏 "
        textField.resignFirstResponder()
        return false
    }

    //Cuando se hace click fuera de la zona de Text Fiel el teclado debe de esconderse
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesBegan(touches, withEvent: event)
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let google = "hola";
        let url = NSURL(string: "http://\(google).com/");
        let requestObj = NSURLRequest(URL: url!);
        webView.loadRequest(requestObj);
        // Do any additional setup after loading the view, typically from a nib.
        //let url = NSURL(string: "http://media2code.com/")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var webView: UIWebView!
    
    //Funcion de nuestro botón, cuando se realiza una acción sobre
    @IBAction func buttonDidTap(sender: AnyObject) {
        let Suma: String = "Hola"
        let Resta: String = "Adios"
        
        if (nameTextField.text == "Bicha") || (nameTextField.text == "bicha") {
            nameLabel.text = "\(Resta), \(nameTextField.text!)🐰🐏 "
            nameTextField.resignFirstResponder()
        }else{
            nameLabel.text = "\(Suma), \(nameTextField.text!)🐰🐏 "
            nameTextField.resignFirstResponder()
            print ("Hola Mundo")
        }
    }

}

