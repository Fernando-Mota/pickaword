//: Playground - noun: a place where people can play

import UIKit
import RxSwift


example(of: "ReplaySubject") {
    let disposeBag = DisposeBag()
    let replay = ReplaySubject<String>.create(bufferSize: 3)
    
    replay.onNext("A")
    
    replay.onNext("B")
    
    replay.onNext("C")
    
    replay
        .subscribe(onNext: { value in
            print("Subscriber 1, value: \(value)")
        }).disposed(by: disposeBag)
    
    replay.onNext("D")
    
    print()
    replay
        .subscribe(onNext: { value in
            print("Subscriber 2, value: \(value)")
        }).disposed(by: disposeBag)
}

