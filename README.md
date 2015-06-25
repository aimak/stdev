# stdev in Swift 2
## This is an implementation of [stdev](http://en.wikipedia.org/wiki/Stdev) in Swift 2

Swift introduced Protocol extension in Swift 2 so I though I would try to implement stdev() for [NSNumber]. 
I think this provides an elegant solution to a common problem. 
Sure, you still have to map your doubles/integers/… into NSNumber, it would be nice to be able to create stdev() for [Double] but I don't think it is already possible in Swift.

## Usage

```swift
let doubles = [1.0, 2.0]
let numbers = doubles.map { NSNumber(double:$0) }
numbers.stdev
```
