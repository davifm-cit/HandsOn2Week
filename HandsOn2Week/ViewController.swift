//
//  ViewController.swift
//  HandsOn2Week
//
//  Created by Davi França Marcelino on 04/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var userPassword: UITextField!
    
    @IBOutlet weak var errorText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func logInButton(_ sender: Any) {
        let nameFilled = checkTextFieldIsEmpty(text: userName.text ?? "")
        let passwordFilled = checkTextFieldIsEmpty(text: userPassword.text ?? "")
        
        if nameFilled || passwordFilled {
            errorText.text = "You need to fill all fields"
        }else{
            errorText.text = ""
                    guard let viewChooseColor = storyboard?.instantiateViewController(withIdentifier: "ChooseColor") as? ChooseColor else {
                        return
                    }
                    navigationController?.pushViewController(viewChooseColor, animated: true)
        }
    }
    
    func checkTextFieldIsEmpty(text:String) -> Bool{
        if text==""{
            return true
        }else{
            return false
        }
            
    }
}

