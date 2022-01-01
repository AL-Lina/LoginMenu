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
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let viewControllers = tabBarController.viewControllers
        
        viewControllers! .forEach{
            if let navVC = $0 as? UINavigationController {
                let welcomeVC = navVC.topViewController as! WelcomeViewController
                welcomeVC.hello = hello
            } 
        }
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnEnter.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    
    


    @IBAction func btnEnterPress() {
        
         
        
        if login.text == "" || password.text == ""{
            let allertController = UIAlertController(title: "Нельзя", message: "ПУСТОТА ПЛОХО", preferredStyle: .alert)
                let action = UIAlertAction(title: "Cancel", style: .cancel) { action in
                }
                allertController.addAction(action)
                self.present(allertController, animated: true, completion: nil)
            
        
        }else {
            if ArrayPerson.shared.array.count == 0 {
                let allertController = UIAlertController(title: "Нельзя", message: "Юзер не найден", preferredStyle: .alert)
                    let action = UIAlertAction(title: "Cancel", style: .cancel) { action in
                    }
                    allertController.addAction(action)
                    self.present(allertController, animated: true, completion: nil)
            } else {
            
            
            for person in ArrayPerson.shared.array {
            if person.login == login.text && person.password == password.text   {
                    hello = "Здравствуйте, \(person.name) \(person.fatherName)!"}
                else {let allertController = UIAlertController(title: "Нельзя", message: "Неверное имя или пароль!", preferredStyle: .alert)
                    let action = UIAlertAction(title: "Cancel", style: .cancel) { action in
                    }
                    allertController.addAction(action)
                    self.present(allertController, animated: true, completion: nil)}
            
        }
            
            
        }
        }
    }
    

}
  
    

