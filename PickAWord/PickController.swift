//
//  PickController.swift
//  PickAWord
//
//  Created by Fernando Mota e Silva on 29/01/18.
//  Copyright © 2018 Fernando Mota e Silva. All rights reserved.
//

import UIKit

class PickController: UIViewController {
    
    @IBOutlet weak var wordOne: UILabel!
    @IBOutlet weak var wordTwo: UILabel!
    @IBOutlet weak var wordThree: UILabel!
    @IBOutlet weak var wordFour: UILabel!
    @IBOutlet weak var wordFive: UILabel!
    @IBOutlet weak var wordSix: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTapActions()
    }
    
    
    @objc func pickedWord(sender: UITapGestureRecognizer) {
       print((sender.view as! UILabel).text ?? "None")
    }


}

extension PickController {
    fileprivate func setupTapActions() {
        wordOne.isUserInteractionEnabled = true
        wordTwo.isUserInteractionEnabled = true
        wordThree.isUserInteractionEnabled = true
        wordFour.isUserInteractionEnabled = true
        wordFive.isUserInteractionEnabled = true
        wordSix.isUserInteractionEnabled = true
        
        wordOne.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(PickController.pickedWord)))
        wordTwo.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(PickController.pickedWord)))
        wordThree.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(PickController.pickedWord)))
        wordFour.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(PickController.pickedWord)))
        wordFive.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(PickController.pickedWord)))
        wordSix.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(PickController.pickedWord)))
    }
}
