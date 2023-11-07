//
//  main.swift
//  minitest
//
//  Created by Jeffrey Clay Setiawan on 07/11/23.
//

import Foundation

func check(num: Int) -> Bool{
    if num == 1 || num == 0{
        return false
    }
    for j in 2..<num{
        if num%j == 0{
            return false
        }
    }
    return true
}
var arr : [Any] = []
var i = 99
while i>0{
    if check(num: i){
        i -= 1
    }else{
        if i%15 == 0{
            arr.append("FooBar")
        }else if i%3 == 0{
            arr.append("Foo")
        }else if i%5 == 0{
            arr.append("Bar")
        }else{
            arr.append(i)
        }
        i -= 1
    }
}
print(arr)
