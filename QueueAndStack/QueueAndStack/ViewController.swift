//
//  ViewController.swift
//  QueueAndStack
//
//  Created by UTTAM on 30/12/17.
//  Copyright © 2017 UTTAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        stackDemo()
        queueDemo()
    }
    
    func stackDemo() {
        
        var stack = Stack<String>()
        stack.push(element: "India")
        stack.push(element: "Japan")
        stack.push(element: "America")
        stack.push(element: "Canada")
        stack.push(element: "Nepal")
        
        print("All items in stack:  \(stack.elementsInQueue())")
        
        print("Poped item from stack: \(stack.pop() ?? "")")
        print("Poped item from stack: \(stack.pop() ?? "")")
        print("Poped item from stack: \(stack.pop() ?? "")")
        print("Poped item from stack: \(stack.pop() ?? "")")
        print("Poped item from stack: \(stack.pop() ?? "")")
        print("Poped item from stack: \(stack.pop() ?? "")")
    }

    func queueDemo() {
        var queue = Queue<Int>()
        queue.push(element: 10)
        queue.push(element: 20)
        queue.push(element: 30)
        queue.push(element: 40)
        queue.push(element: 50)
        
        print("All items in queue:  \(queue.elementsInQueue())")
        
        print("Poped item from queue: \(String(describing: queue.pop()))")
        print("Poped item from queue: \(String(describing: queue.pop()))")
        print("Poped item from queue: \(String(describing: queue.pop()))")
        print("Poped item from queue: \(String(describing: queue.pop()))")
        print("Poped item from queue: \(String(describing: queue.pop()))")
        print("Poped item from queue: \(String(describing: queue.pop()))")
        
    }


}

