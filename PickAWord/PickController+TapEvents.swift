//
//  PickController+TapEvents.swift
//  PickAWord
//
//  Created by Fernando Mota e Silva on 27/02/2018.
//  Copyright © 2018 Fernando Mota e Silva. All rights reserved.
//

import UIKit

extension PickController {
    func setupTapActions() {
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
