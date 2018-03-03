//: Playground - noun: a place where people can play

import UIKit

func example(of description: String, action: () -> Void) {
    print(" ----- Example of \(description) ----- ")
    action()
    print()
    print()
    print()
}

class MyClassPesada {
    
    var itens: [String] = []
    
    init() {
        for index in 1...10000000 {
            itens.append("\(index)")
        }
    }
}

example(of: "lazy") {
    class MyClassPai {
        
        lazy var pesadao = MyClassPesada()
        
    }
    
    var inicialDate = Date()
    let obj = MyClassPai()
    var diff = Date().timeIntervalSince(inicialDate)
    print("Diff: \(diff.truncatingRemainder(dividingBy: 1)*1000)")
    
    inicialDate = Date()
    print("\(obj.pesadao.itens.count)")
    diff = Date().timeIntervalSince(inicialDate)
    print("Diff: \(diff.truncatingRemainder(dividingBy: 1)*1000)")
}
