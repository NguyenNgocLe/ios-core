import UIKit

// Demo equaltable

func exists<T: Equatable>(item: T, elements: [T]) -> Bool {
    for element in elements {
        if element == item {
            return true
        }
    }
    return false
}

// The main takeaway here is that we've written the code once, but we can apply it over a wide variety of data types.

//Output: True
let result = exists(item: "1", elements: ["1", "2", "3"])
print(result)

//Output: False
let result2 = exists(item: 100, elements: [1, 2, -100])
print(result2)
