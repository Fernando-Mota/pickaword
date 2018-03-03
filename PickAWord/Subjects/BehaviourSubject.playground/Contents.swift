//: Playground - noun: a place where people can play

import UIKit
import RxSwift

example(of: "BehaviorSubject") {
    let disposeBag = DisposeBag()
    let subject = BehaviorSubject<String>(value: "A")
    
    subject
        .subscribe(onNext: { value in
            print("Subscriber 1, value: \(value)")
        }).disposed(by: disposeBag)
    
    subject.onNext("B")
    
    print()
    subject
        .subscribe(onNext: { value in
            print("Subscriber 2, value: \(value)")
        }).disposed(by: disposeBag)
    
    subject.onNext("C")
    
    print()
    subject
        .subscribe(onNext: { value in
            print("Subscriber 3, value: \(value)")
        }).disposed(by: disposeBag)
}
