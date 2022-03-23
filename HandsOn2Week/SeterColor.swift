//
//  SeterColor.swift
//  HandsOn2Week
//
//  Created by Davi França Marcelino on 04/03/22.
//

import UIKit

protocol ChangerColorDelegate{
    func changeBackgroundColor(red:CGFloat,green:CGFloat,blue:CGFloat)
}

class SeterColor: UIViewController {

    
    @IBOutlet weak var toneRed: UISlider!
    
    @IBOutlet weak var toneGreen: UISlider!
    
    @IBOutlet weak var toneBlue: UISlider!
    
    var delegate:ChangerColorDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        delegate?.changeBackgroundColor(red: CGFloat(toneRed.value), green: CGFloat(toneGreen.value), blue: CGFloat(toneBlue.value))
    }
}
