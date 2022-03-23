//
//  ChooseColor.swift
//  HandsOn2Week
//
//  Created by Davi França Marcelino on 04/03/22.
//

import UIKit
import SwiftUI

class ChooseColor: UIViewController {


    @IBAction func goToSeterColor(_ sender: Any) {
        guard let seterColor = storyboard?.instantiateViewController(withIdentifier: "SeterColor") as? SeterColor else {return}
        seterColor.delegate = self
        navigationController?.present(seterColor, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

extension ChooseColor:ChangerColorDelegate{
    func changeBackgroundColor(red: CGFloat, green: CGFloat, blue: CGFloat) {
        let backgroudColor = UIColor(red: red,green: green,blue: blue,alpha: 1.0)
        self.view.backgroundColor = backgroudColor
    }
}

