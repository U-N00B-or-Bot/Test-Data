//
//  ViewController.swift
//  Test Data
//
//  Created by Bulat Serimbetov on 02.01.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var login: UIStackView!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    var hello: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func btnPressed() {
        for person in PersonDataBase.shared.personArray {
            if person.login == username.text {
                hello = person.surname
            } else {
                let allertController = UIAlertController(title: "Нельзя", message: person.login, preferredStyle: .alert)
                                    let action = UIAlertAction(title: "Cancel", style: .cancel) { action in
                                    }
                                    allertController.addAction(action)
                                    self.present(allertController, animated: true, completion: nil)            }
        }
    }
    
}

