//: [Previous: __Subject__](@previous)
//: # Operators
//: _Operator can be used for transforming or processing emitted value of observables._
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true
import RxSwift

let number = PublishSubject<Int>()

/*:
 ### Map
 Transform an observable into another type of observable
 */
//let percent = number.map { value -> String in
//    let percentage = Double(value) / 100.0
//    return "\(percentage)%"
//}
//percent.subscribe(onNext: { print($0) })

/*:
 ### Filter
 Returning only specific value
 */
//let oddNumber = number.filter { value -> Bool in
//    return (value % 2) > 0
//}
//oddNumber.subscribe(onNext: { print($0) })

/*:
 ### Reduce
 Similar with method _.reduce_ on Array, which returns combined value of its elements
 */
//let total = number.reduce(0) { (previous, current) -> Int in
//    return previous + current
//}
//total.subscribe(onNext: { print($0) })

number.onNext(1)
number.onNext(2)
number.onNext(3)
number.onNext(4)
number.onNext(5)

/*:
 __Reminder__
 
 Observable won't emit it value if it is not subscribed !
 */
