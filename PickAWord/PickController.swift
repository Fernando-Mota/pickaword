//
//  PickController.swift
//  PickAWord
//
//  Created by Fernando Mota e Silva on 29/01/18.
//  Copyright © 2018 Fernando Mota e Silva. All rights reserved.
//

import UIKit

//MARK: 1
import RxSwift

class PickController: UIViewController {
    
    @IBOutlet weak var wordOne: UILabel!
    @IBOutlet weak var wordTwo: UILabel!
    @IBOutlet weak var wordThree: UILabel!
    @IBOutlet weak var wordFour: UILabel!
    @IBOutlet weak var wordFive: UILabel!
    @IBOutlet weak var wordSix: UILabel!
    
    //MARK: 2
    let selectedWord = PublishSubject<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTapActions()
    }
    
    
    @objc func pickedWord(sender: UITapGestureRecognizer) {
        //MARK: 3
        selectedWord.onNext((sender.view as! UILabel).text ?? "None")
    }

    override func viewWillDisappear(_ animated: Bool) {
        //MARK: 4
        selectedWord.onCompleted()
    }

}
