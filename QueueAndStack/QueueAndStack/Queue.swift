//
//  QueueAndStack.swift
//  QueueAndStack
//
//  Created by UTTAM on 30/12/17.
//  Copyright © 2017 UTTAM. All rights reserved.
//

import Foundation

protocol QueueProtocol {
    associatedtype ElementType
    var count: Int { get }
    mutating func push(element:ElementType)
    mutating func pop()->ElementType?
    
    //Additional function for getting all the item in queue
    func elementsInQueue() ->[ElementType]
}

struct Queue<T> : QueueProtocol {
    
    private var items: [T] = []
    var count: Int {
        return items.count
    }
    mutating func push(element: T) {
        items.append(element)
    }
    mutating func pop() -> T? {
        // check if queue has item or not , If item is available return first item from queue OR else return nil
        if items.count == 0 { return nil }
        return items.removeFirst()
    }
    
    func elementsInQueue() ->[T] {
        return items
    }
}
