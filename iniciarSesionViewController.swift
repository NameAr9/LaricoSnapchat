//
//  iniciarSesionViewController.swift
//  LaricoSnapchat
//
//  Created by MAC32 on 31/10/22.
//

import UIKit
import Firebase
import FirebaseAuth
class iniciarSesionViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { user, error in
                    print("Intentando Iniciar Sesion =(")
                   if error != nil{
                       print("Se presento el siguiente error: \(error)")
                   }else{
                       print("Inicio de sesion exitoso =) ")
                   }
               }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
