//
//  detailsVC.swift
//  HIMYMbook
//
//  Created by Özgür Salih Dülger on 7.01.2023.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var characterLabel: UILabel!
    
    var selectedHimym : Himym?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedHimym?.name
        characterLabel.text = selectedHimym?.character
        imageView.image = selectedHimym?.image

        
    }
    

   
}
