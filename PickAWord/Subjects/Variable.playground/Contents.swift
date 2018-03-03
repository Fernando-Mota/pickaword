//: Playground - noun: a place where people can play

import UIKit
import RxSwift

example(of: "Variable") {
    let disposeBag = DisposeBag()
    let variable = Variable<String>("A")
    
    variable
        .asObservable()
        .subscribe(onNext: { value in
            print("Subscriber 1, value: \(value)")
        }).disposed(by: disposeBag)
    
    variable.value = "B"
    variable.value = "C"
    
    print()
    variable
        .asObservable()
        .subscribe(onNext: { value in
            print("Subscriber 2, value: \(value)")
        }).disposed(by: disposeBag)
}
