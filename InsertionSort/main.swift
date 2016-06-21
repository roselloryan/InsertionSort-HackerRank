//
//  main.swift
//  InsertionSort

import Foundation


var arr : [Int] = [2, 3, 4, 5, 6, 7, 8, 9, 10, 1]
let n = arr.count


    let e = arr[n-1]
//    print("e = \(e)")

    for var j in 1..<n {
        let secondIndex = n-1-j
        let x = arr[n-1-j]
//        print("x = \(x)")
   
    if e < x {
//      print("\(e) < \(x)")

        arr.removeAtIndex(secondIndex + 1)
        arr.insert(x, atIndex: secondIndex + 1)
            
        var printString = ""
        for var k in 0..<arr.count {
            printString += "\(arr[k]) "
        }
        print(printString)
        
        if secondIndex == 0 {
            arr.removeAtIndex(secondIndex + 1)
            arr.insert(e, atIndex: secondIndex)
        
            var printString = ""
            for var k in 0..<arr.count {
                printString += "\(arr[k]) "
            }
            print(printString)
        }
    }
    else if e > x {
        arr.removeAtIndex(secondIndex + 1)
        arr.insert(e, atIndex: secondIndex + 1)
            
        var printString = ""
        for var k in 0..<arr.count {
            printString += "\(arr[k]) "
        }
        print(printString)
        break
    }
}



