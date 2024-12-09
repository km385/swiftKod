//
//  Test.swift
//  MemoryGame
//
//  Created by student on 09/12/2024.
//

import SwiftUI

struct Test: View {
    
    init() {
        //test()
        dodaj()
    }
     var body: some View {
         
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
         
    }
}

func filterNumber(tab:[Int], warunek: (Int)->Bool ) -> [Int] {
    
    var nowatablica: [Int] = []
    for liczba in tab {
        if warunek(liczba) {
            nowatablica.append(liczba)
        }
    }
    return nowatablica
//    return tab.filter { number in
//        warunek(number)
//    }
    
    
}

func processNumber(tab: [Int], xd: (Int)->Int)-> [Int]{
    var tab2: [Int] = []
    for i in tab{
       
        tab2.append(xd(i))
    }
    return tab2
}


func potega(a: Int) -> Int {
    return a * a
}

func dodaj() {
    let tab: [Int] = Array(1...20)
    
    let z4 = processNumber(tab: tab, xd: potega)
    print(z4)
    
    let z1 = processNumber(tab: tab){
        n in
        n+5
    }
//    print(z1)
    
    let z2 = processNumber(tab: tab){
        n in
        n*5
    }
//    print(z2)
    let z3 = processNumber(tab: tab){
        n in
        n*n
//        Int(pow(Double(n),Double(arg2)))
    }
//    print(z3)
}
func test() {
    let tab: [Int] = Array(1...20)
    
    
    let parzyste = filterNumber(tab: tab) { n in
        n % 2 == 0
    }
    print(parzyste)
    
    let wiekszeOd10 = filterNumber(tab: tab) { n in
        n > 10
    }
    print(wiekszeOd10)
    
    let ujemne = filterNumber(tab: tab, warunek: {
        n in
        n < 0
    })
    
    print(ujemne)
}

#Preview {
    Test()
}
