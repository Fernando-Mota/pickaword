//
//  ViewController.swift
//  PickAWord
//
//  Created by Fernando Mota e Silva on 29/01/18.
//  Copyright © 2018 Fernando Mota e Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    var words: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        words.append("Teste")
        words.append("dessa")
        words.append("budega")
        updateTextView()
    }

    func updateTextView() {
        textView.text = words.joined(separator: " ")
    }

    @IBAction func clear(_ sender: UIButton) {
        textView.text = ""
    }
    
    @IBAction func pickAWord(_ sender: UIButton) {
        let pickController = storyboard?.instantiateViewController(withIdentifier: "PickController") as! PickController
        guard let navigation = navigationController else {return}
        
        navigation.pushViewController(pickController, animated: true)
    }
}

