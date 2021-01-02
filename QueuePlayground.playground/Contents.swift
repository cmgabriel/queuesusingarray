import UIKit
import Foundation
//Simple queue implementation using swift
class Queue {
    
    //Declare the variable that holds the information
    var queue:[Int] = [Int]()
    
    init(arr:[Int]) {
        if arr.count != 0 {
            arr.forEach { el in
                queue.append(el)
            }
        }
    }
    
    public func enqueue(el:Int) {
        queue.append(el)
    }
    
    public func dequeue() -> Int?{
        if queue.count != 0 {
            return queue.removeFirst()
        }
        return nil
    }
    
    public func peek() -> Int?{
        if queue.count != 0 {
            return queue.first
        }
        return nil  
    }
    
    public func printCurrentQueue(){
        print(queue)
    }
}

//Initalize the queue with an array
var arr:[Int] = [1,3,5,2,8,4]
var queue = Queue(arr: arr)

//Print current queue
queue.printCurrentQueue()

//Peek at the front of the queue
if let frontEl = queue.peek() {
    print(frontEl)
}

//Add new items to the queue
queue.enqueue(el: 9)
queue.enqueue(el: 7)

//Print the queue with new elements
queue.printCurrentQueue()

if let removedElement = queue.dequeue() {
    print(removedElement)
}

//Print the queue
queue.printCurrentQueue()


