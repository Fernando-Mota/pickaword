//
//  ViewController.swift
//  PickAWord
//
//  Created by Fernando Mota e Silva on 29/01/18.
//  Copyright © 2018 Fernando Mota e Silva. All rights reserved.
//

import UIKit
//MARK: 1
import RxSwift

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    //MARK: 2
    let disposeBag = DisposeBag()
    
    //MARK: 3
    var words = Variable<[String]>([])

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: 5
        let wordsObservable = words.asObservable().share()
            
        wordsObservable.subscribe(onNext: { [weak self] _ in
                self?.updateTextView()
            }).disposed(by: disposeBag)
        
        wordsObservable.subscribe(onNext: { [weak self] values in
            self?.navigationItem.title = "Palavra(s), \(values.count)"
        }).disposed(by: disposeBag)
    }

    func updateTextView() {
        textView.text = words.value.joined(separator: " ")
    }

    @IBAction func clear(_ sender: UIButton) {
        textView.text = ""
        words.value = []
    }
    
    @IBAction func pickAWord(_ sender: UIButton) {
        let pickController = storyboard?.instantiateViewController(withIdentifier: "PickController") as! PickController
        guard let navigation = navigationController else {return}
        
        //MARK: 4
        pickController.selectedWord
            .subscribe(onNext: { [weak self] value in
                self?.words.value.append(value)
            }).disposed(by: disposeBag)
        
        navigation.pushViewController(pickController, animated: true)
    }
}

