//
//  interleaveArrays.swift
//  
//
//  Created by Tetsuki Syu on 2020/08/28.
//

import Foundation

func interleaveArrays<T>(a: [T], b: [T]) -> [T] {
    var arr = [T]()
    var observed = a
    var other = b
    
    while !observed.isEmpty {
        arr.append(observed.remove(at: 0))
        swap(&observed, &other)
    }
    
    if !other.isEmpty {
        arr.append(contentsOf: other)
    }
    
    return arr
}
