//
//  EnterScreenViewController.swift
//  LoginMenu
//
//  Created by Bulat Serimbetov on 01.01.2022.
//

import UIKit

class EnterScreenViewController: UIViewController {

    @IBOutlet weak var btnEnter: UIButton!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var login: UITextField!
    var hello: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        btnEnter.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func btnEnterPress() {
        for person in ArrayPerson.shared.array {
            if person.login == login.text && person.password == password.text {
                hello = "Здравствуйте, \(person.name) \(person.fatherName)!"
            } else {let allertController = UIAlertController(title: "Нельзя", message: "Неверное имя или пароль!", preferredStyle: .alert)
                let action = UIAlertAction(title: "Cancel", style: .cancel) { action in
                }
                allertController.addAction(action)
                self.present(allertController, animated: true, completion: nil)}
        }

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as! WelcomeViewController
        welcomeVC.hello = hello}
    }
    
    

