//: Playground - noun: a place where people can play

import UIKit
import RxSwift

example(of: "PublishSubject") {
    let disposeBag = DisposeBag()
    let publish = PublishSubject<String>()
    
    publish.onNext("A")
    
    publish.onNext("B")
    
    publish
        .subscribe(onNext: { value in
            print("Subscriber 1, value: \(value)")
        }).disposed(by: disposeBag)
    
    publish.onNext("C")
    
    print()
    publish
        .subscribe(onNext: { value in
            print("Subscriber 2, value: \(value)")
        }).disposed(by: disposeBag)
    
    publish.onNext("D")
}
